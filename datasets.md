---
title: Datasets
category: datasets
layout: default
---

## Datasets

#### Deprivation & Census

*Targetting deprived neighborhoods*

* Visualization
* Choropleth mapping
* Spatial regression

{% capture census %}{% include_relative content/datasets/census.md %}{% endcapture %}
{{ census | markdownify }}

{% capture osgeo %}{% include_relative content/datasets/os_geodatapack.md %}{% endcapture %}
{{ osgeo | markdownify }}

{% capture tweets %}{% include_relative content/datasets/twitter.md %}{% endcapture %}
{{ tweets | markdownify }}


#### Commuting data

* Spatial interaction models
* Spatial regression
