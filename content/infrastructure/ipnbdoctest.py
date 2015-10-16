#!/usr/bin/env python
"""
simple example script for running and testing notebook resulting in a new workbook.

Usage: `ipnbdoctest.py foo.ipynb foo_new.ipynb`

Each cell is submitted to the kernel, and the outputs are compared with those stored in the notebook.
"""

import io
import os,sys,time
import base64
import re
import os

from collections import defaultdict
from Queue import Empty

try:
    from IPython.kernel import KernelManager
except ImportError:
    from IPython.zmq.blockingkernelmanager import BlockingKernelManager as KernelManager

from IPython.nbformat.current import reads, NotebookNode, write


def compare_png(a64, b64):
    """compare two b64 PNGs (incomplete)"""
    try:
        import Image
    except ImportError:
        pass
    adata = base64.decodestring(a64)
    bdata = base64.decodestring(b64)
    return True

def sanitize(s):
    """sanitize a string for comparison.
    
    fix universal newlines, strip trailing newlines, and normalize likely random values (memory addresses and UUIDs)
    """
    # normalize newline:
    s = s.replace('\r\n', '\n')
    
    # ignore trailing newlines (but not space)
    s = s.rstrip('\n')
    
    # normalize hex addresses:
    s = re.sub(r'0x[a-f0-9]+', '0xFFFFFFFF', s)
    
    # normalize UUIDs:
    s = re.sub(r'[a-f0-9]{8}(\-[a-f0-9]{4}){3}\-[a-f0-9]{12}', 'U-U-I-D', s)
    
    return s


def consolidate_outputs(outputs):
    """consolidate outputs into a summary dict (incomplete)"""
    data = defaultdict(list)
    data['stdout'] = ''
    data['stderr'] = ''
    
    for out in outputs:
        if out.type == 'stream':
            data[out.stream] += out.text
        elif out.type == 'pyerr':
            data['pyerr'] = dict(ename=out.ename, evalue=out.evalue)
        else:
            for key in ('png', 'svg', 'latex', 'html', 'javascript', 'text', 'jpeg',):
                if key in out:
                    data[key].append(out[key])
    return data


def compare_outputs(test, ref, skip_compare=('png', 'traceback', 'latex', 'prompt_number')):
    for key in ref:
        if key not in test:
            print "missing key: %s != %s" % (test.keys(), ref.keys())
            return False
        elif key not in skip_compare and sanitize(test[key]) != sanitize(ref[key]):
            print "mismatch %s:" % key
            print test[key]
            print '  !=  '
            print ref[key]
            return False
    return True


def run_cell(shell, iopub, cell):
    # print cell.input
    shell.execute(cell.input)
    # wait for finish, maximum 48h
    shell.get_msg(timeout=172800)
    outs = []
    
    while True:
        try:
            msg = iopub.get_msg(timeout=0.2)
        except Empty:
            break
        msg_type = msg['msg_type']
        if msg_type in ('status', 'pyin'):
            continue
        elif msg_type == 'clear_output':
            outs = []
            continue
        
        content = msg['content']
        # print msg_type, content
        out = NotebookNode(output_type=msg_type)
        
        if msg_type == 'stream':
            out.stream = content['name']
            out.text = content['data']
        elif msg_type in ('display_data', 'pyout'):
            for mime, data in content['data'].iteritems():
                attr = mime.split('/')[-1].lower()
                # this gets most right, but fix svg+html, plain
                attr = attr.replace('+xml', '').replace('plain', 'text')
                setattr(out, attr, data)
            if msg_type == 'pyout':
                #out.prompt_number = content['execution_count']
                #TODO: need to find better workaround
                pass
        elif msg_type == 'pyerr':
            out.ename = content['ename']
            out.evalue = content['evalue']
            out.traceback = content['traceback']
        else:
            print "unhandled iopub msg:", msg_type
        
        outs.append(out)
    return outs
    
def test_notebook(nb):
    km = KernelManager()
    km.start_kernel(extra_arguments=['--pylab=inline'], stderr=open(os.devnull, 'w'))
    try:
        kc = km.client()
        kc.start_channels()
        iopub = kc.iopub_channel
    except AttributeError:
        # IPython 0.13
        kc = km
        kc.start_channels()
        iopub = kc.sub_channel
    shell = kc.shell_channel
    
    # run %pylab inline, because some notebooks assume this
    # even though they shouldn't
    shell.execute("pass")
    shell.get_msg()
    while True:
        try:
            iopub.get_msg(timeout=1)
        except Empty:
            break
    
    successes = 0
    failures = 0
    errors = 0
    prompt_number = 1
    for ws in nb.worksheets:
        for cell in ws.cells:
            if cell.cell_type != 'code':
                continue
            try:
                outs = run_cell(shell, iopub, cell)
            except Exception as e:
                print "failed to run cell:", repr(e)
                print cell.input
                errors += 1
                cell.outputs = [e]
                continue
            
            failed = False
            for out, ref in zip(outs, cell.outputs):
                if not compare_outputs(out, ref):
                    failed = True
            if failed:
                failures += 1
            else:
                successes += 1
            sys.stdout.write('.')

            cell.outputs = outs
            cell.prompt_number = prompt_number
            if cell.outputs:
                cell.outputs[0]['prompt_number'] = prompt_number
            prompt_number += 1

    print
    print "tested notebook %s" % nb.metadata.name
    print "    %3i cells successfully replicated" % successes
    if failures:
        print "    %3i cells mismatched output" % failures
    if errors:
        print "    %3i cells failed to complete" % errors
    kc.stop_channels()
    km.shutdown_kernel()
    del km

def compile_notebook(nf):
    '''
    Turn output notebook into a pdf and get rid of in-between files
    '''
    print "Converting notebook..."
    cmd = "ipython nbconvert --to latex %s"%nf
    os.system(cmd)
    cmd = "pdflatex %s"%nf.replace('.ipynb', '.tex')
    os.system(cmd)
    cmd = "pdflatex %s"%nf.replace('.ipynb', '.tex')
    os.system(cmd)
    cmd = "pdflatex %s"%nf.replace('.ipynb', '.tex')
    os.system(cmd)
    cmd = "rm %s.ipynb %s.tex %s.aux %s.log %s.out"%tuple([nf.replace('.ipynb', '')]*5)
    os.system(cmd)
    cmd = "rm -R %s"%nf.replace('.ipynb', '_files')
    os.system(cmd)
    return None

if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser(description='Run iPython notebook ' +
                     'non-interactively and save results to new notebook')
    parser.add_argument('input_ipynb', action='store',
                        help='iPython notebook file to run')
    parser.add_argument('output_ipynb', action='store',
                        help='iPython notebook file to save')

    args = parser.parse_args()

    with open(args.input_ipynb) as f:
        print "testing %s" % args.input_ipynb
        nb = reads(f.read(), 'json')
    test_notebook(nb)
    with io.open(args.output_ipynb, 'w', encoding='utf8') as f:
        write(nb, f, 'json')
    
    #_ = compile_notebook(args.output_ipynb)

