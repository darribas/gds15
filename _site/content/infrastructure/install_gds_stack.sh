#!/bin/bash

# The following script assumes you have Anaconda installed

##  Update the package manager:

conda update --quiet --yes conda

# Create an environment we will call `gds` and contains `ipython` as the only
# requirement (for now):

conda create -y -n gds ipython
conda install -n gds -y pip

# This creates the environment, to access it, we need to activate it:

source activate gds

# Install dependencies

conda install -n gds -y jupyter

conda install -n gds -y pandas scipy matplotlib seaborn statsmodels scikit-learn

pip install -U pysal
pip install -U clusterpy

conda install -n gds -y fiona six
# IOOS supports win-32/64 and linux-64
conda install -n gds -c https://conda.binstar.org/ioos psycopg2
# SciTools supports win-32 and other platforms
conda install -n gds -y -c scitools shapely
pip install -U geopy
pip install -U descartes
pip install --no-deps geopandas

# Switch geos version to install cartopy correctly
conda install -n gds -y -c scitools geos
conda install -n gds -y -c scitools cartopy

