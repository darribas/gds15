#!/bin/bash

                    ########
                    # Unix #
                    ########

# The following script assumes you have Anaconda installed

##  Update the package manager:

conda update --quiet --yes conda

# Create an environment we will call `gds_exp` and contains `ipython` as the only
# requirement (for now):

conda create -y -n gds_exp ipython
conda install -n gds_exp -y pip

# This creates the environment, to access it, we need to activate it:

source activate gds_exp

# Install dependencies

conda install -n gds_exp -y jupyter

conda install -n gds_exp -y scipy matplotlib seaborn statsmodels scikit-learn

pip install -U pysal
pip install -U clusterpy

conda install -n gds_exp -y fiona six
conda install -n gds_exp -y psycopg2
conda install -n gds_exp -y shapely
conda install -n gds_exp -y pyproj
pip install -U geopy
pip install -U descartes

# Switch geos version to install cartopy correctly
conda install -n gds_exp -y -c scitools geos
conda install -n gds_exp -y -c scitools cartopy

# Experimental
conda install -n gds_exp -y pandas
pip install git+git://github.com/geopandas/geopandas.git
conda install -n gds_exp -y rasterio
pip install -U Jinja2
pip install -U mplleaflet

