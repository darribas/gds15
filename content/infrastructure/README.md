# Infrastructure

This course is best followed if you can reproduce the examples and tutorials
provided with it. To do so, you will need to install in your machine a series
of software packages. These are all open-source and available for free to
download. Although there are several ways to approach this process, we first
enumerate here the list of dependencies and then show two simple approaches to
install them in different platforms.

## Complementary material to this guide

This guide assumes you have the following additional files, available to
download by clicking:

* `install_gds_stack`([Windows](content/infrastructure/install_gds_stack_win.bat), 
[Mac/Linux](content/infrastructure/install_gds_stack_unix.sh))
* [`check_gds_stack.ipynb`](content/infrastructure/check_gds_stack.ipynb)

[Required for the Vagrant option only]

* [`Vagrantfile`](content/infrastructure/Vagrantfile)
* [`bootstrap.sh`](content/infrastructure/bootstrap.sh)
* [`launchenv.sh`](content/infrastructure/launchenv.sh)

## Dependencies

* [Python 2.X](https://www.python.org)
* [IPython](http://ipython.org)
* [Jupyter](https://jupyter.org)

* [Pandas](http://pandas.pydata.org)
* [SciPy](http://scipy.org)
* [Matplotlib](http://matplotlib.org)
* [Seaborn](http://stanford.edu/~mwaskom/software/seaborn/)

* [Statsmodels](http://www.statsmodels.org/stable/index.html)
* [Scikit-learn](http://scikit-learn.org/stable/index.html)

* [PySAL](http://pysal.org)
* [Clusterpy](http://www.rise-group.org/risem/clusterpy/)
* [Cartopy](http://scitools.org.uk/cartopy/)
* [Geopandas](http://geopandas.org)

## Installation

### Anaconda

The easiest way to install locally and natively the software stack required is
to install a full scientific Python distribution. Although other good alternatives
are also available (e.g. [Canopy](https://www.enthought.com/products/canopy/),
[Sage](http://www.sagemath.org)), we recommend to install
[Anaconda](https://store.continuum.io/cshop/anaconda/). Please follow the
instructions provided in the link for installation.

Once you have a fully working Anaconda distribution installed in your
computer, you can setup an isolated environment that contains all the required
libraries by simply running the install script `install_gds_stack_X.sh` provided
with this guide. These scripts vary depending on the platform you are on. 

#### Mac OSX/Linux

Open up a terminal (OSX and Linux) or  Powershell/cmd prompt
(Windows) and run the following commands:

* Navigate to the folder where this file is:

    ```
    cd /path/to/folder/
    ```

* Make the script executable:

    ```
    chmod +x install_gds_stack.sh
    ```

* Execute the script:

    ```
    ./install_gds_stack.sh
    ```

Once this has run, you should be able to activate the environment:

#### Windows

Simply double-click on the `install_gds_stack_win.bat` file, this will set in
motion the installation.

**NOTE**: this assumes your Anaconda installation is placed under
`C:\Anaconda`. If this is not the case, you will have to open the file with a
text editor and replace the path in line 8, where it says:

```
set ANACONDA_DIR=C:\Anaconda
```

By the path to your Anaconda installation.

### Virtual Machine with Vagrant

A fully automated and reproducible approach, albeit less "native" to the local
machine, is to install a virtual machine using Vagrant. This takes some of the
complexities away, but requires an extra layer of computation on top of the
native OS. To install a virtual machine, follow these steps:

* Install Vagrant from the following link:

    - [https://www.vagrantup.com](https://www.vagrantup.com)

* Navigate to the folder where this file is:

    ```
    cd /path/to/folder/
    ```

* Run the following command. The first time, it will take a relative long time
  as it has to download a large amount of files (in fact, an entirely OS).
  Subsequent times, it is much faster:

    ```
    vagrant up
    ```

## Check

To check things have installed correctly, an additional file is included, `check_gds_stack.ipynb`. To run it, open a terminal (PowerShell), navigate to the folder as showed above and type the following in Mac/Linux:

```
source activate gds
```

Or the following for Windows:

```
source activate gds
```

And then:

```
jupyter notebook
```

This will open up a browser window with a list of the files in the folder. Click on `check_gds_stack.ipynb`, which will open a new tab in the browser. Navigate to Cell --> Run All and click on it. If you do not get any error and all the cells except for the first one return `True`, things went well.
