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

REM to use the environment, we must activate it:
REM although note that on Windows this appears to make no difference to future package installations
call activate.bat gds
if %debug%.==on. @echo on

REM Install dependencies
conda install -n gds -y jupyter
conda install -n gds -y --no-update-deps pandas=0.16 numpy=1.9 scipy matplotlib seaborn statsmodels scikit-learn fiona=1.5 six  rasterio  pytables=3.2.1

REM IOOS channel
conda install -n gds -y --no-update-deps -c ioos psycopg2 pyproj=1.9.3

REM SciTools channel
conda install -n gds -y --no-update-deps -c scitools geos shapely=1.5.8

REM additional packages
pip install -U -t %ANACONDA_DIR%\%GDS_PACKAGES% geopy descartes pysal clusterpy Jinja2 mplleaflet
curl -Lk https://github.com/geopandas/geopandas/archive/bdfc7fb819a53246fb44ca91b260bb394f4177fb.zip -o %ANACONDA_DIR%\%GDS_PACKAGES%\master.zip
pip install -U --no-deps "%ANACONDA_DIR%\%GDS_PACKAGES%\master.zip" -t %ANACONDA_DIR%\%GDS_PACKAGES%

REM copy test notebook into place
md %ANACONDA_DIR%\notebooks >nul
pushd %~dp0
copy check_gds_stack.ipynb %ANACONDA_DIR%\notebooks >nul
pushd %ANACONDA_DIR%\notebooks

REM launch test notebook
jupyter notebook
