% Geographic Data Science - Lecture V
% Space, formally
%[Dani Arribas-Bel](http://darribas.org)

#
## Today

* The need to represent space formally
* Spatial weights matrices
    * What
    * Why
    * Types
* The spatial lag

#
## The need to represent space formally

* For a statistical method to be **explicitly spatial**, it needs to contain
  some representation of the geography, or **spatial context**

## The need to represent space formally

* **(Geo)Visualization**: translating numbers into a (visual) language that the human brain
  *"speaks better"*
* **Spatial Weights**: translating geography into a (numerical) language that
  a computer *"speaks better"*.

#
## W as a formal representation of space

##

-   $N$ x $N$ positive matrix that contains **spatial relations**
    between *all* the observations in the sample

<script type="math/tex; mode=display">
w_{ij} = \left\{ \begin{array}{rl}
x_{ij}>0 &\mbox{ if $i$ and $j$ are neighbors} \\
0 &\mbox{ otherwise}
\end{array} \right\}
</script>

-   Optional standardization
    - Row-wise
    - Matrix-wise
    - ...

##

-   Defined **ex-ante** (sometimes criticized by its *ad-hoc* nature)
-   Very often, $x_{ij}%_$ may follows standard **criteria**:
    - Contiguity (queen, rook, bishop)
    - Some function of distance
    - Nearest neighbors (*knn*)
    - ...
-   In some contexts, additional **requirements**: 
    * *Exogeneity*
    * Close match to theoretical framework
    * Empirically motivated reflection of actual interactions


## W graphically

Example: rook contiguity

<CENTER>
<img src="../content/lectures/figs/l04kgeo.png" alt="Drawing" style="width: 500px;"/>
</CENTER>

$$\downarrow$$

##

<CENTER>
<img src="../content/lectures/figs/l04_geo_w.png" alt="Drawing" style="width: 500px;"/>
</CENTER>

-   Diagonal of zeros by assumption
-   Gets large quickly
-   Fairly sparse

$\rightarrow$ GeoDaSpace demo with weights


#
## The spatial lag

$$y_{sl-i} = \displaystyle \sum_j w_{ij} y_j$$

$$Y_{sl} = WY%_$$

##

-   Measure that captures the behaviour of a variable in the neighborhood of a given observation $i$.
-   Similar to the time lag, but **not** completely (I am my neighbor's neighbor)
-   Typically standardized to reflect some sort of average, although not always, depends on purpose (e.g. market potential).

##

-   Common way to introduce space formally in a statistical framework
-   Heavily used in both ESDA and spatial regression to delineate neighborhoods. Examples:

    - Moran's I
    - LISAs
    - Spatial models (lag, error...)


#
## Recapitulation

#
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Geographic Data Science'15 - Lecture 5</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.


