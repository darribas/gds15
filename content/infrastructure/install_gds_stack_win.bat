@echo off
pushd %~dp0
REM set debug=on
if %debug%.==on. @echo on

REM This script assumes you have Anaconda installed.
REM Change the variable below to your Anaconda base directory (note this directory must not contain any spaces):
set ANACONDA_DIR=C:\Anaconda


set GDS_PACKAGES=envs\gds\Lib\site-packages
pushd %ANACONDA_DIR%\scripts

REM Update the package manager:
conda update conda -y

REM Create an environment we will call `gds` and contains `ipython` as the only
REM requirement (for now):
conda create -y -n gds ipython
conda install -n gds -y pip

REM This creates the environment, to access it, we need to activate it:
REM although note that on Windows this appears to make no difference to future package installations
call activate.bat gds
if %debug%.==on. @echo on

REM Install dependencies
conda install -n gds -y jupyter
conda install -n gds -y pandas=0.16 scipy matplotlib seaborn statsmodels scikit-learn
pip install -U -t %ANACONDA_DIR%\%GDS_PACKAGES% pysal
pip install -U -t %ANACONDA_DIR%\%GDS_PACKAGES% clusterpy
conda install -n gds -y fiona=1.5 six
conda install -n gds -y -c scitools shapely
conda install -n gds -y -c https://conda.binstar.org/ioos psycopg2
pip install -U -t %ANACONDA_DIR%\%GDS_PACKAGES% geopy
pip install -U -t %ANACONDA_DIR%\%GDS_PACKAGES% descartes
pip install --no-deps -t %ANACONDA_DIR%\%GDS_PACKAGES% git+git://github.com/geopandas/geopandas.git

REM Switch geos version to install cartopy correctly
conda install -n gds -y -c scitools geos
conda install -n gds -y -c scitools cartopy

REM not present on Windows apparently
conda install -n gds -y -c https://conda.binstar.org/ioos pyproj

REM additional packages
conda install -n gds -y rasterio=0.24
pip install -U -t %ANACONDA_DIR%\%GDS_PACKAGES% Jinja2
pip install -U -t %ANACONDA_DIR%\%GDS_PACKAGES% mplleaflet
conda install -n gds -y pytables=3.2.1

REM copy test notebook into place
md %ANACONDA_DIR%\notebooks
pushd %~dp0
copy check_gds_stack.ipynb %ANACONDA_DIR%\notebooks >nul
pushd %ANACONDA_DIR%\notebooks

REM launch test notebook
jupyter notebook
