code = code
url = http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

.PHONY: data tests eda regression report clean all

all: eda regression report

data:
	curl $(url) > $@/Advertising.csv

tests:
	Rscript $(code)/$@/test-regression.R

eda:
	Rscript $(code)/scripts/$@-script.R

regression:
	Rscript $(code)/scripts/$@-script.R

report: eda regression
	pandoc $@/$@.Rmd -s -o $@/$@.pdf

clean:
	rm report/report.pdf
