#!/bin/bash

                    ########
                    # Unix #
                    ########

# The following script assumes you have Anaconda installed

##  Update the package manager:

conda update --quiet --yes conda

# Create an environment we will call `gds` and contains `ipython` as the only
# requirement (for now):

conda create -y -n gds ipython jupyter

# This creates the environment, to access it, we need to activate it:

source activate gds

# Install dependencies

conda install -n gds -y --no-update-deps pip pandas=0.16 numpy=1.9 scipy matplotlib seaborn statsmodels scikit-learn fiona=1.5 six  rasterio  pytables=3.2.1 psycopg2 shapely=1.5.8 pyproj=1.9.4

pip install -U geopy descartes pysal clusterpy mplleaflet
pip install --no-deps git+git://github.com/geopandas/geopandas.git@bdfc7fb819a53246fb44ca91b260bb394f4177fb

