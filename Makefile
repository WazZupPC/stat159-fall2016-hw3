
.PHONY: all data tests eda regression report clean

all: eda regression report

data: 
	curl -o data/Advertising.csv "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

tests: code/test-that.R
	Rscript code/test-that.R

eda: code/scripts/eda-script.R
	Rscript code/scripts/eda-script.R

regression: code/scripts/regression-script.R
	Rscript code/scripts/regression-script.R

report: report/report.Rmd
	pandoc -s report/report.Rmd -o report/report.pdf

clean: 
	rm -f report/report.pdf