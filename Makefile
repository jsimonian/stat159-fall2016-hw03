# Section names
code = code
scripts = scripts
report = report

# in case the URL of the data changes - only one name to change
url = http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

.PHONY: data tests eda regression packages report clean all

all: eda regression report

data: data/Advertising.csv

tests:
	Rscript $(code)/test-that.R

# I don't have "data" as a dependency, since that would have Make re-download
# the data every time the eda target is run
eda: data/Advertising.csv
	Rscript $(code)/$(scripts)/$@-script.R

regression: data/Advertising.csv
	Rscript $(code)/$(scripts)/$@-script.R

report: eda regression
	Rscript -e "library(rmarkdown); render('$@/$@.Rmd', output_format='pdf_document')"

packages:
	Rscript code/install-packages.R

data/Advertising.csv:
	curl $(url) > $@

clean:
	rm $(report)/$(report).$(rep_filetype)
