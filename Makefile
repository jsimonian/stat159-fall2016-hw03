# Section names
code = code
scripts = scripts
report = report

# in case the URL of the data changes - only one name to change
url = http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

.PHONY: data tests eda regression report clean all

all: eda regression report

data:
	curl $(url) > $@/Advertising.csv

tests:
	Rscript $(code)/test-that.R

eda: data
	Rscript $(code)/$(scripts)/$@-script.R

regression: data
	Rscript $(code)/$(scripts)/$@-script.R

report: eda regression
	Rscript -e "library(rmarkdown); render('$@/$@.Rmd')"

clean:
	rm $(report)/$(report).$(rep_filetype)
