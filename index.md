---
title: Home
category: home
layout: default
---

{% capture index %}{% include_relative content/website_data/index.md %}{% endcapture %}
{{ index | markdownify }}

### Module Handbook

A pdf copy of the module handbook can be downloaded
[here](content/handbook/handbook.pdf).

### Citation

[![DOI](https://zenodo.org/badge/doi/10.5281/zenodo.46300.svg)](http://dx.doi.org/10.5281/zenodo.46300)

If you use material from this course, I would appreciate if you used the
following citation:

<pre>
@online{darribas_gds15,
  author = {Dani Arribas-Bel},
  title = {Geographic Data Science'15},
  year = 2016,
  url = {http://darribas.org/gds15},
  urldate = {2016-02-19}
  doi = {10.5281/zenodo.46300}
}
</pre>

### License

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Geographic Data Science'15</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.
