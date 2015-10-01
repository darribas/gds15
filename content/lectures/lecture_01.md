% Geographic Data Science - Lecture I
% Introduction
%[Dani Arribas-Bel](http://darribas.org)

# Today

- This course
- The (geo-)data revolution
- (Geo-)Data Science

# 

## This course

## Quiz

* Have you ever heard the terms **"Big Data"** and **"Data Science"**?
* Have you ever written a line of computer code?
* How would you define in one sentence "Data Science"?
* Do you think **"Geographic Data Science"** is closer to GIS or Statistics?

## 

<div text-align="center" markdown="1">
*More stats than a GIS course, more GIS than a stats course...*
</div>

## 

<div text-align="center" markdown="1">
*...but in a fun
way!*
</div>

## Structure

11 weeks of:

- **Prep. materials**: videos, podcasts, articles... 1h. approx. (most recommended!)
- **1h. Lecture**: concepts, methods, examples
- **2h. Computer practical**: hands-on, application of concepts, Python
  (highly *employable*)
- **Further readings**: how to go beyond the minimum

**IMPORTANT**: Week 7 has no class! [Labs are booked so I recommend you spend
the lab time working on your first assignment]

## Website

[http://darribas.org/gds15](http://darribas.org/gds15)

<iframe src="http://darribas.org/gds15" width=600 height=400 ></iframe>

## Philosophy

- (Lots of) **methods** and techniques
    - General overview
    - Intuition
    - Very little math
- Emphasis on the **application**
- Close connection to **"real world"** applications
- **FUN**

## Assignments

- Mark based on two assignments, due:

     1. Week 8 (50%)
     1. Week 13 (50%)

- Coursework

- **Equivalent** to 2,500: report with **code**, **figures** (e.g. maps), and **text**

#

## The (geo-)data revolution

## The (geo-)data revolution

Exciting times to be a:

* Geographer
* Map fan
* Data fan

The world is being **"datafied"**...

## "Datafication"

<div text-align="center" markdown="1">
*Quantification of phenomena through the systematic recording of data*
</div>

*“taking all aspects of life and turning them into data”* [Cukier &
(Mayer-Schoenberg)](https://www.foreignaffairs.com/articles/2013-04-03/rise-big-data)

Examples: credit transactions, public transit, tweets, facebook likes, spotify songs, etc. 

## "Datafication"

Many implications: 

* Opportunities for optimization of systems (Industrial IoT, planning
  systems...)
* **Window** into human **behaviour** (this course)
* Issues with **intentionality** and **privacy**
* ...

## *Why now?*

## *Why now?*

Advances in:

* Computing power
* Communication
* Geospatial technology

## *Why now?* --> Computing power

[Source](https://upload.wikimedia.org/wikipedia/commons/e/e5/ENIAC-changing_a_tube.jpg)

<div style="height: 600px;" markdown="1">
![](../content/lectures/figs/l01_old_computer.jpg)
</div>

## *Why now?* --> Computing power

[Source](https://pixabay.com/p-431230/)

<div style="height: 600px;" markdown="1">
![](../content/lectures/figs/l01_smartphone.jpg)
</div>

## *Why now?* --> Communication

[Source](http://upload.wikimedia.org/wikipedia/commons/e/e1/Pigeon_Messengers_%28Harper%27s_Engraving%29.png)

<div style="height: 600px;" markdown="1">
![](../content/lectures/figs/l01_pigeon.png)
</div>

## *Why now?* --> Communication

[Source](http://upload.wikimedia.org/wikipedia/commons/a/ab/Internet_of_Things.jpg)

<div style="height: 600px;" markdown="1">
![](../content/lectures/figs/l01_iot.jpg)
</div>

## *Why now?* --> Geospatial technology

[Source](http://upload.wikimedia.org/wikipedia/commons/9/90/Astrolabe_%28PSF%29.png)

<div style="height: 600px;" markdown="1">
![](../content/lectures/figs/l01_astrolabe.png)
</div>

## *Why now?* --> Geospatial technology

[Source](http://upload.wikimedia.org/wikipedia/commons/0/0a/GPS_on_smartphone_cycling.JPG)

<div style="height: 600px;" markdown="1">
![](../content/lectures/figs/l01_gps.jpg)
</div>

## The (geo-)data revolution

The confluence of the three (computing, communication and geospatial) is
creating large amounts of data.

Now, **data in itself is not very valuable**:

- Data --> Information --> Knowledge --> Action

# 

## Data Science

## 

<div text-align="center" markdown="1">
*Methods, tools and techniques to turn data into **actionable
knowledge** *
</div>

## 

But wait, isn't statistics just that?

Not only...

## Data Science

[Source](http://drewconway.com/zia/2013/3/26/the-data-science-venn-diagram):
Drew Conway

<div style="height: 600px;" markdown="1">
![](../content/lectures/figs/l01_Data_Science_VD.png)
</div>

## Data Science

Statistics is a *very* important part of DS...

... but not the only one:

* **Computational tools** --> Programming (hence this course's tutorials!)
* **Comunication skills** --> "Story telling" (hence this course's assignments)
* **Domain expertise** --> Theories about why the data are the way they are (hence
  the rest of your degree)

## Data Science

* Not all new (standing on the shoulders of giants)
* "The data becomes key part in the product"
* Focus on actionability and solving particular problems

Some examples...

## {data-background=../content/lectures/figs/l01_chocolate.png}

## Amazon {data-background=../content/lectures/figs/l01_chocolate.png}

## {data-background=../content/lectures/figs/l01_okcupid.png}

## Dating sites {data-background=../content/lectures/figs/l01_okcupid.png}

## {data-background=../content/lectures/figs/l01_uber.png}

## Uber {data-background=../content/lectures/figs/l01_uber.png}

#
## **Geo**-Data Science
## **Geo**-Data Science

* A (very) large portion of all these new data are inherently **geographic** or can be traced back to some location over space.
* Spatial is special.
* Some of the methods require an explicitly spatial treatment --> (Geo-)Data
  Science

Some examples...

## {data-background=../content/lectures/figs/l01_airbnb.png}

## AirBnb neighborhoods {data-background=../content/lectures/figs/l01_airbnb.png}

## {data-background=../content/lectures/figs/l01_gmaps.png}

## Google Maps routing {data-background=../content/lectures/figs/l01_gmaps.png}

## {data-background=../content/lectures/figs/l01_jsnow.jpg}

## John Snow's cholera map {data-background=../content/lectures/figs/l01_jsnow.jpg}

#
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Geographic Data Science'15 - Lecture 1</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.


