# Notes for developers

## Tweaking CSS theme for html slides

Modifications to the original theme can be done using `reveal.js` custom theme
support. You will need the development setup (`node.js` and `grunt`). Follow
instructions in reveal.js [Github](https://github.com/hakimel/reveal.js). Once
setup, change the theme by:

* Edit the source file (`.scss`).
* Run `grunt css-themes`.
* Copy the resulting `.css` file into the course project.

## Converting html slides to pdf

Conversion can be automated using [`wkhtmltopdf`](http://wkhtmltopdf.org/).
See the `Makefile` for specific command.

## Running the website locally

The website is build on Jekyll, so running it on a local server requires the following dependencies:

* [Jekyll](http://jekyllrb.com)
* [jekyll-scholar](https://github.com/inukshuk/jekyll-scholar)

