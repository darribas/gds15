#!/bin/bash

                    ########
                    # Unix #
                    ########

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

conda install -n gds -y pandas=0.16 scipy matplotlib seaborn statsmodels scikit-learn

pip install -U pysal
pip install -U clusterpy

conda install -n gds -y fiona=1.5 six
conda install -n gds psycopg2
conda install -n gds -y shapely
conda install -n gds -y pyproj
pip install -U geopy
pip install -U descartes
pip install --no-deps git+git://github.com/geopandas/geopandas.git

# Switch geos version to install cartopy correctly
conda install -n gds -y -c scitools geos
conda install -n gds -y -c scitools cartopy

# Additional
conda install -n gds -y rasterio=0.24
pip install -U Jinja2
pip install -U mplleaflet
conda install -n gds -y pytables=3.2.1


