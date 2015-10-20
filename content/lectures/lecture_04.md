% Geographic Data Science - Lecture IV
% Mapping Data
%[Dani Arribas-Bel](http://darribas.org)

#
## Today

* Mapping data
* MAUP
* Choropleths
    * Definition
    * Classes
* Cartograms
* Conditional maps
* Space-Time mapping

#
##
<h3>Data **maps**</h3>

* Abstraction from the purely geographical map
* Representing numerical values within a spatial context

<div class="fragment">
<h3>Mapping **data**</h3>
<ul>
<li> A geographical approach to statistical visualization </li>
<li> The spread of data is considered in its geographical dimension </li>
</ul>

Before we delve into different types of data maps...
</div>

#
## MAUP

##
**M**odifiable **A**real **U**nit **P**roblem

##

Figure 1 of dots --> Overlay --> Choropleth

##

Figure 2 of dots --> Overlay --> Choropleth

## MAUP

**Scale** and **delineation mismatch**  between:

* Underlying process (e.g. individuals, firms, shops)
* Unit of measurement (e.g. neighborhoods, regions, etc.)

<span class="fragment">Always keep **MAUP** in mind when exploring aggregated data!!!

#
## Choropleths
## Choropleths

* Counterpart of the histogram
* *Thematic map in which values of a variable are encoded using a color
  gradient of some sort*
* **Values** are **classified** into specific **colors**: value --> bin
* **Information loss** as a trade off for **simplicity**

## Classification choices

* Colors <span class="fragment"> --> in alignment with the goal of the map
* Bins <span class="fragment"> --> How many?
* Algorithm:

<ul class="fragment"> 
 <li> Unique values </li>
 <li> Equal interval </li>
 <li> Qua/Quintiles (equal count) </li>
 <li> Fisher-Jenks </li>
 <li> ... </li>
</ul>

## Beware standarization!!!

[[Source](http://imgs.xkcd.com/comics/heatmap.png)]
<div style="height: 500px;" markdown="1">
![](../content/lectures/figs/l04_heatmap.png)
</div>

## Unique values

Same value span for each bin

## Equal interval

## Quintiles

## Other

* Fisher-Jenks
* Natural breaks
* Outlier maps: box maps, std. maps...

## Tips

Skewed distributions

Combine alternative options 

#
## Cartograms

*"**Data maps** where the variable is encoded, not by a color gradient, but by
**distorting the shape/size** of the geographical objects"*

<ul class="fragment">
<li> Useful in cases where the natural size/shape induces to wrong
interpretation, or obscures the intended representation. </li>
<li> If not done carefully, it can distort the message in unintended ways
</li>
</ul>

## Cartograms

<center>
<div style="height: 400px;" markdown="1">
![](../content/lectures/figs/l04_liv_choro.png)
 <span class="fragment"> 
![](../content/lectures/figs/l04_liv_carto.png)
</div>
</center>


## {data-background=../content/lectures/figs/l04_carto_consumption.png}

[[Source](http://www.worldmapper.org/)]

#
## Conditional maps

* What they are
* If no association, maps should look the same, otherwise, there's a clear
  pattern
* Exploration of multivariate relationships

## Conditional maps

Example with Liverpool data

#
## Space-Time mapping
## Space-Time mapping

* Bringing time into a spatial 2D context is "tricky" (it's really 3D!)
* Traditionally <span class="fragment"> --> sequence of time periods, 3D plots
* More recently <span class="fragment"> --> animation and interactivity

## 

[[Source](http://www.svgopen.org/2005/papers/abstract_neumann_thematic_navigation_in_space_and_time/)]
<div style="height: 500px;" markdown="1">
![](../content/lectures/figs/l04_space_time_cube.png)
</div>


## 

[[Source](http://cartodb.github.io/torque/examples/navy_leaflet.html)]

<iframe width='100%' height='520' frameborder='0' src='http://cartodb.github.io/torque/examples/navy_leaflet.html' allowfullscreen webkitallowfullscreen mozallowfullscreen oallowfullscreen msallowfullscreen></iframe>

## 

[[Source](https://cartodb.com/case-studies/la-metro-movement/)]

<iframe width='100%' height='520' frameborder='0' src='https://d9a.cartodb.com/viz/fe9751f0-6ced-11e4-98f3-0e9d821ea90d/embed_map' allowfullscreen webkitallowfullscreen mozallowfullscreen oallowfullscreen msallowfullscreen></iframe>

#
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Geographic Data Science'15 - Lecture 4</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.


