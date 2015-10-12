% Geographic Data Science - Lecture III
% (Geo-)Visualization
%[Dani Arribas-Bel](http://darribas.org)

#
## Today

* Visualization

    * *What* and *why*
    * History
    * Examples

* Geovisualization

    * *What*
    * "A map for everyone"
    * Dangers of geovisualization

#
## Visualization

##

<center>
*"Data graphics **visually display measured quantities** by means of the **combined
use** of points, lines, a coordinate system, numbers, symbols, words, shading,
and color."*
</center>

<div style="text-align:right">
<small>
*The Visual Display of Quantitative Information*. Edward R. Tufte.
</small>
</div>

##

<div style="height: 600px;" markdown="1">
![](../content/lectures/figs/l03_monalisa_data.png)
 <span class="fragment"> 
![](../content/lectures/figs/l03_monalisa.jpg)
</div>


[[Source](https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa,_by_Leonardo_da_Vinci,_from_C2RMF_retouched.jpg/687px-Mona_Lisa,_by_Leonardo_da_Vinci,_from_C2RMF_retouched.jpg)]

## A bit of history

<center>
Maps <span class="fragment">  --> Data Maps (XVIIth.C.) <span class="fragment">  --> Time series (1786) <span class="fragment">  --> Scatter plots
</center>

<span class="fragment">
<ul>
<li> Surprisingly recent: 1750-1800 approx. (much later than many other
  advances in math and stats!) </li>
<li> **William Playfair**'s *"linear arithmetic"*: encode/replace numbers in
  tables into visual representations. </li>
<li> Other relevant names throughout history: Lambert, Minard, Marey. </li>
</ul>

## Visualization

*The Visual Display of Quantitative Information*. Edward R. Tufte.

* By **encoding information visually**, they allow to present **large amounts** of
  numbers in a **meaninful** way.
* If well made, visualizations provide leads into the processes underlying the
  graphic.

## Learning by seeing time...

## Time series (XVIIIth. C.)

Lambert plot on soil temperature, depth under the surface

## Bar chart

Playfair's bar chart in The Commercial and Political Atlas

## Lambert line abstract line plot

Fig. 5 Lambert, measured rate against temperature, 1769

## Examples

*"It may well be the best statistical graphic ever drawn"*

Minard map --> French export of wines (1864) (full screen)

#
## Geovisualization

## Tufte (1983)

<center>
*"The most extensive data maps [...] place millions of bits of information on
a single page before our eyes. No other method for the display of statistical
information is so powerful"*
</center>

## MacEachren (1994)

> **Geographic visualization** can be defined as the use of concrete visual
> representations --whether on paper or through computer displays or other
> media--to **make spatial contexts and problems visible**, so as to engage
> the most powerful **human information processing** abilities, those
> associated with vision.

## GeoVisualization

* End goal is not to replace the human *in the loop*, but to **augment** her/him.
* Augmentation here comes through engaging the pattern recognition
  capabilities that our brain inherently has.
* Combines:
    * Traditional maps
    * Statistical maps
    * Statistical devices of other kind (charts, scatter plots, etc.)
* Different roles in the analysis process...

## A map for everyone

Maps can fulfill several needs

Depending on which one we want to stress, the best map will look very
different

MacEachren & Kraak (1997) identify three main dimensions:

* Knowledge of what is being plotted
* Target audience
* Degree of interactivity

## A map for everyone

[MacEachren & Kraak (1997) map cube]

## Un/known: *fast* and *slow* maps

## Fast maps

[Amsterdam postcode polygons]

## Slow maps

[Amsterdam twitterhoods final]

## Audience: *easy* and *hard* maps

The larger and non-specialized the audience, the less you can assume about
what they know, hence less information can be emedded

Highly specialized maps are not particularly compelling to the general eye,
but they contain a lot of specific information that can be easily decoded by
the trained eye

This changes with statistical/geographic literacy (the minimum grows)

Pro-tip: know your audience and optimize for it

## Easy map

[easy map figure: screenshot of where train stations are]

## Hard map

[hard map figure: Arribas-Bel & Gerritse (2012)]

## Interaction: one or many maps in one

Talk about interaction, oportunity for discovery, and the end-user as explorer
rather than mere consumer

Interactivity, however, not always desired: sometimes you need one-message,
clear maps to make a case and you don't have time for rich interactive one. It
also takes much more time (althought changing)

## Static map

[static map figure: LA choropleth]

## Interactive map

[Interactive map figure: LA interactive map]

# Examples of GeoVisualization

## Choropleths

See next lecture

## Box maps - Outliers

[Create box map]

## Cartograms

[Look for Danny Dorling examples]

## Conditional maps/

## Space-Time maps: animations

CartoDB/Torquee example

## Interactivity

Bokeh linked views

## Surfaces

Pollution/weather map

See lecture on points

# Dangers of GeoVisualization

## *How to lie with maps*

[How to lie with maps cover with Pinnochio]

## *How to lie with maps*

[Map of UK with the same variable, different classifications]

## *How to lie with maps*

The human brain is so good a picking up patterns...

... that it finds them even where they don't exist!

* Patternicity (Shermer, 2008)

> *The tendencey to find meaningful patterns in meaningless noise*

* Apophenia (Konrad, 1958)

> *The experience of seeing patterns or connections in random or meaningless
> data*

## Twitter clusters

[Map of random points on the UK]

## How to *be truthful* with maps

<center>
*"With great power comes great responsibility"*
</center>

Statistics to rescue!!!

* Complement and enhance visuals
* Help disentangling **true** from **spurious** patterns (a.k.a. identifying
  the "Jesus on the toast")
* Reciprocity: GeoVis can also enhance statistics and make them more useful

## Statistics for Twitter clusters

[Show a spatial statistic can disentangle]

# Recapitulation

## Recapitulation

#
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Geographic Data Science'15 - Lecture 3</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.


