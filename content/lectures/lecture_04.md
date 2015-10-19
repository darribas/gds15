% Geographic Data Science - Lecture IV
% Mapping Data
%[Dani Arribas-Bel](http://darribas.org)

#
## Today

* Mapping data
* Choropleths
    * Definition
    * Classes
* Cartograms
* Conditional maps
* Space-Time mapping

#
## Mapping data

#
## Choropleths
## Choropleths

* Counterpart of the histogram
* *Thematic map in which values of a variable are encoded using a color
  gradient of some sort*
* **Values** are **classified** into specific **colors**: value --> bin

## Classification

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
* ...

#
## Cartograms

#
## Conditional maps

#
## Space-Time mapping

## 

<iframe width='100%' height='520' frameborder='0' src='https://d9a.cartodb.com/viz/fe9751f0-6ced-11e4-98f3-0e9d821ea90d/embed_map' allowfullscreen webkitallowfullscreen mozallowfullscreen oallowfullscreen msallowfullscreen></iframe>

#
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Geographic Data Science'15 - Lecture 4</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.


