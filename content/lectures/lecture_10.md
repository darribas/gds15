% Geographic Data Science - Lecture IX
% Causal Inference
%[Dani Arribas-Bel](http://darribas.org)

#
## Today

* Correlation Vs Causation
* Causal inference
* Why/when causality matters
* Hurdles to causal inference
* Strategies to estimate Causal inference

#
## Correlation Vs Causation

##

<center>
*"Association breeds similarity"*
</center>

<center>
<small>
Nasir bin Olu Dara Jones (a.k.a. *Nas*)
</small>
</center>

## Correlation Vs Causation

Two fundamental ways to look at the relationship between two (or more)
variables:

<div class="fragment">
`Correlation`
</div>

<div class="fragment">
`Causation`
</div>

## Correlation Vs Causation

Motivation: causation involves correlation but not the other way around

## Examples
XXX

* ice-cream and temperature (look for Foursquare example)
* Google trends (spurious correlation)
* Crime & policing
* Medical trials
* Moran Plot (which influences which?)

#
## Causal inference

<iframe width="660" height="415" src="https://www.youtube.com/watch?v=JA5s-Uh6q8s" frameborder="0" allowfullscreen></iframe>

#
## Why/When
XXX

* It's very hard but can be very useful
* Many analyses try to get at cause-effect (this *for* that)
* If all you want to do is predict, you don't need it
* Crucial for policy/business interventions

## When
XXX

* Policy interventions
* A/B testing (Drugs, user experience...)

## When not
XXX

* Exploratory analysis
* Predictive settings

#
## Hurdles to causal inference
## Hurdles to causal inference
XXX

Correlation *implies* Causation

Causation *does **not** imply* Correlation

*Why?*

<div class="fragment">
* Reverse causality 
* Confounding factors/endogeneity
</div>

## Reverse causality
XXX

Definition

Example

## Confounding factors
XXX

Definition

Example

#
## Strategies
## Strategies
XXX

Is there any hope?

The key is to get an *exogenous source of variation*

## Strategies

<div class="fragment">
**`Randomized Control Trials`**

*Treated* and *control* groups

Probability of treatment is independent of everything else
</div>

<div class="fragment">
**`Quasi-natural experiments`**

Like a RCT, but that just *"happen to occur naturally"* (natural dissasters,
exogenous law changes...)
</div>

<div class="fragment">
**`Econometric techniques`**

For the interested reader: space-time regression, instrumental variables, propensity
score matching, differences-in-differences, regression discontinuity...
</div>

## So, why correlation at all?

<div class="fragment">
Establishing **causality is much harder** than identifying correlation, and
sometimes it is just not possible with a given dataset (e.g. many
observational surveys). 
</div>

<div class="fragment">
... correlation usually *precludes* causation and, depending on the
application/analysis, it is all that is needed.
</div>

<div class="fragment">
It is important to always draw **conclusions based on analysis**, know
what the data can and cannot tell, and stay **honest**.
</div>

#
## Recapitulation

* Correlation does **NOT** imply causation
* Causality implies more than correlation, a direct **effect channel** that is
  **harder** to identify but might be **worthwhile**
* There are several techniques to identify causality, all usually based on
  obtaining **exogenous sources of variation**
* You don't always need causality

##

<center>
<img src="../content/lectures/figs/l10_xkcd.png" alt=""
style="width:800px;height:400px;"/>
</center>

<center>
[[Source](https://xkcd.com/552/)]
</center>

#
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Geographic Data Science'15 - Lecture 10</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.


