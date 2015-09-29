# Infrastructure

This course is best followed if you can reproduce the examples and tutorials
provided with it. To do so, you will need to install in your machine a series
of software packages. These are all open-source and available for free to
download. Although there are several ways to approach this process, we first
enumerate here the list of dependencies and then show two simple approaches to
install them in different platforms.

## Complementary material to this guide

This guide assumes you have the following additional files, included in the same
`infrastructure` folder where you have found this guide:

* `install_gds_stack.sh`
* `check_gds_stack.ipynb`

[Required for the Vagrant option only]

* `Vagrantfile`
* `bootstrap.sh`
* `launchenv.sh`

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
libraries by simply running the install script `install_gds_stack.sh` provided
with this guide. To do so, open up a terminal (OSX and Linux) or  Powershell
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

To check things have installed correctly, an additional file is included, `check_gds_stack.ipynb`. To run it, open a terminal (PowerShell), navigate to the folder as showed above and type:

```
source activate gds
jupyter notebook
```

This will open up a browser window with a list of the files in the folder. Click on `check_gds_stack.ipynb`, which will open a new tab in the browser. Navigate to Cell --> Run All and click on it. If you do not get any error and all the cells except for the first one return `True`, things went well.
