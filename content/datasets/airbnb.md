#### AirBnb listing for Inner London - MSOA level

This dataset contains information for [AirBnb](http://www.airbnb.com) properties 
for the area of Inner 
London aggregated at the MSOA level. It has been prepared by Dani Arribas-Bel
using as the original source the full listing of AirBnb locations for London
provided by XXX. Same as the source, the dataset is released under a
[XXX](XXX) License.

For every polygon, the following variables are provided:

* `id`: MSOA unique identifier.
* `accommodates`: average property capacity in the MSOA.
* `bathrooms`: average number of bathrooms in the properties within the MSOA.
* `bedrooms`: average number of bedrooms in the properties within the MSOA.
* `beds`: average number of beds in the properties within the MSOA.
* `number_of_reviews`: average number of reviews received by the properties within the MSOA.
* `reviews_per_month`: average number of reviews per month received by the properties within the MSOA.
* `review_scores_ratings`: average rating score received by the properties within the MSOA. 
* `review_scores_accuracy`: average accuracy score received by the properties within the MSOA. 
* `review_scores_cleanliness`: average cleanliness score received by the properties within the MSOA. 
* `review_scores_checkin`: average checkin score received by the properties within the MSOA. 
* `review_scores_communication`: average communication score received by the properties within the MSOA. 
* `review_scores_location`: average location score received by the properties within the MSOA. 
* `review_scores_value`: average value score received by the properties within the MSOA. 
* `property_count`: total number of AirBnb properties listed withing the MSOA.

**Source**: [XXX](placeHolder)'s extract of AirBnb locations in London (UK). Available at this
[link](placeHolder).

**Instructions**: the data is provided as a `GeoJSON` file and is available
for download in the following url:

> [http://darribas.org/gds15/content/labs/data/ilm_abb.geojson](content/labs/data/ilm_abb.geojson)

The lab also uses an additional file that contains the boundary lines of the
London boroughs, which has been obtained from:

> [https://github.com/radoi90/housequest-data/blob/master/london_boroughs.geojson](https://github.com/radoi90/housequest-data/blob/master/london_boroughs.geojson)

But can also be downloaded from the course website:

> [http://darribas.org/gds15/content/labs/data/london_boroughs.geojson](content/labs/data/london_boroughs.geojson)

**Additional files**: A Jupyter notebook showing the process of cleaning and
aggregation carried out from the original data to the file provided here can
be accessed in [`.ipynb`](content/labs/lab_08_airbnb_data_prep.ipynb) and 
[html](content/labs/lab_08_airbnb_data_prep.html) format.
