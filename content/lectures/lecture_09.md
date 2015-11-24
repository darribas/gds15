% Geographic Data Science - Lecture IX
% Points
%[Dani Arribas-Bel](http://darribas.org)

#
## Today

* The *point* of points
* Point patterns
* Visualization of point patterns

#
## The *point* of points
## Points like polygons

Points *can* represent **"fixed" entities**

<span class='fragment'>
In this case, points are **qualitatively** similar to **polygons/lines**

<span class='fragment'>
The **goal** here is, taking location fixed, to model other aspects of the
data

## Points like polygons

Examples:

<ul>
<li class="fragment"> Cities (in most cases) </li>
<li class="fragment"> Buildings </li>
<li class="fragment"> Polygons represented as their centroid </li>
<li class="fragment"> ... </li>
</ul>

## When points are not polygons

Point data are not only a different geometry than polygons or lines...

<span class="fragment">
... Points can also represent a fundamentally different way to approach spatial analysis

## Points unlike polygons

<ul>
<li class="fragment current-visible">  Rather than exhausting the entire space, points can be **events** subject to
  **occur anywhere** </li>
<li class="fragment current-visible"> The **location** of the event is **part** of what we are trying to understand/**model** </li>
<li class="fragment current-visible"> The interest focuses on **characterizing** the **pattern**
that the points follow **over space**
</ul>

## Points unlike polygons

<ul>
<li>  Rather than exhausting the entire space, points can be **events** subject to
  **occur anywhere** </li>
<li> The **location** of the event is **part** of what we are trying to understand/**model** </li>
<li> The interest focuses on **characterizing** the **pattern**
that the points follow **over space**
</ul>

## A few examples...

## {data-background=../content/lectures/figs/l09_crime.png}

[[Source](http://www.crimemapping.com/map.aspx?aid=3db8cf99-a73b-46d2-b218-bd24cf491577)]

## {data-background=../content/lectures/figs/l09_trees.png}

[[Source](http://jillhubley.com/project/nyctrees/)]

## UFO Sightings (1933-)

<iframe width='100%' height='520' frameborder='0' src='https://lcpearso.cartodb.com/viz/e36e448a-da87-11e4-a327-0e018d66dc29/embed_map' allowfullscreen webkitallowfullscreen mozallowfullscreen oallowfullscreen msallowfullscreen></iframe>

## Geo-tagged tweets

<iframe width="100%" height="500px" frameBorder="0" src="https://api.tiles.mapbox.com/v4/enf.c3a2de35/page.html?access_token=pk.eyJ1IjoiZW5mIiwiYSI6IkNJek92bnMifQ.xn2_Uj9RkYTGRuCGg4DXZQ#12/53.4155/-2.9680"></iframe>

#
## Point patterns

## Point patterns

Distribution of **points over** a portion of **space**

Assumption is a point can happen anywhere on that space, but only happens in
specific locations

<div class='fragment'>
* **Unmarked**: locations only
* **Marked**: values attached to each point
</div>

##

**`Point Pattern Analysis`**

Describe, characterize, and explain point patterns, focusing on their **generating process**

* Visual exploration
* Clustering properties
* Statistical modeling of the underlying processes

#
## Visualization of PPs
## Visualization of PPs

Two routes (today):

* *Aggregate* <span class='fragment'> $\leftrightarrow$ "Histogram"
* *Smooth* <span class='fragment'> $\leftrightarrow$ KDE

## Aggregation
##

<center>
*Points meet polygons*
</center>

<span class="fragment"> Use **polygon** boundaries and **count** points per area

<span class="fragment"> [Insert your skills for **choropleth mapping** here!!!]

<span class="fragment"> **But**, the polygons need to *"make sense"* (their
delineation needs to relate to the point generating process)

## Aggregation

[Figures w/ points in polygons --> Choropleths of counts]

## Hex-binning

If **no** polygon boundary seems like a **good candidate** for aggregation...

<span class='fragment'> ...draw a **hexagonal** (or squared) **tesselation**!!!

<div class='fragment'>
Hexagons...

* Are **regular**
* **Exhaust** the space (Unlike circles)
* Have **many sides** (minimize boundary problems)
</div>

## Hex-binning

[Figure]

## But...

<div class="fragment">
(Arbitrary) aggregation may induce **M.A.U.P.** (see Lecture 4)
</div>

<center class="fragment">
$+$
</center>

<div class="fragment">
Points usually represent events that affect to only **part** of the population
and hence are best considered as **rates** (see Lecture 4)
</div>

## Kernel Density Estimation
## Kernel Density Estimation

In general

* Portraying distributions
* "Continuous histogram"
* Estimation of underlying distribution

## Kernel Density Estimation

## Spatial KDE

In space

* Intensity surfaces
* Ratios of densities (derived surfaces, heat maps, etc.) --> comparing two
  patterns

Effect of different bandwith

## Spatial KDE

[Figure]

## Surfaces of values

Spatial prediction, interpolation, kriging

#
## Recapitulation



#
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Geographic Data Science'15 - Lecture 6</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.


