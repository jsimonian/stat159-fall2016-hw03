# Stat 159 - Homework 3: Multiple Regression Analysis

- [Author](#author)
- [Description](#description)
- [Project Structure](#project-structure)
- [Contents](#contents)
- [Usage](#usage)
- [License](#license)


### Author: Joseph Simonian

### Description:

Expand on [Homework 2](https://github.com/jsimonian/stat159-hw02) of this course, by looking at multiple regressions. Also write functions and unit tests.

### Project Structure:

```
project
│   .gitignore
|   LICENSE
│   README.md
│   Makefile
│   session-info.txt                        # produced by session-info-script.R
│
└───data
│   │   README.md
│   │   Advertising.csv
│   │   eda-output.txt                      # produced by eda-script.R
│   │   correlation-matrix.RData            # produced by eda-script.R
│   │   regression.RData                    # produced by regression-script.R
│
└───code
│   │   README.md
│   │   test-that.R
│   │   
│   └───scripts
│   │   │   eda-script.R
│   │   │   regression-script.R
│   │   │   session-info-script.R
│   │
│   └───functions
│   │   │   regression-functions.R
│   │
│   └───tests
│   │   │   test-regression.R
│
└───images
│   │   histogram-sales.png                # produced by eda-script.R
│   │   histogram-tv.png                   # produced by eda-script.R
│   │   histogram-radio.png                # produced by eda-script.R
│   │   histogram-newspaper.png            # produced by eda-script.R
│   │   scatterplot-matrix.png             # produced by eda-script.R
│   │   scatterplot-tv-sales.png           # produced by regression-script.R
│   │   scatterplot-radio-sales.png        # produced by regression-script.R
│   │   scatterplot-newspaper-sales.png    # produced by regression-script.R
│   │   residual-plot.png                  # produced by regression-script.R
│   │   scale-location-plot.png            # produced by regression-script.R
│   │   normal-qq-plot.png                 # produced by regression-script.R
│
└───report
    │   report.Rmd
    │   report.pdf
```

### Contents:

- `/code`: Code used in the generation of all histograms, plots, and regression data, as well as functions used to calculate statistical parameters, and unit tests for those functions.

- `/images`: Histograms and scatterplots used in the report, in `.png` format.

- `/data`: The original data (Advertising.csv), as well as summary statistics on the various columns, summaries of the regressions carried out, and data on the correlations between all variables.

- `/report`: The main report, in both `.Rmd`, and `.pdf` formats.

### Usage:

To generate the pdf output of this homework, simply clone the repository and run `make all`. You may also need to install certain `R` packages. To do so, run `make packages`.

### License:

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
