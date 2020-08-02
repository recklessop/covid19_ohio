#!/bin/bash
curl -o COVIDSummaryData.csv https://coronavirus.ohio.gov/static/COVIDSummaryData.csv
mv COVIDSummaryData.csv /home/justin/covid19_ohio
git add *
git commit -m "$(date '+%Y-%m-%d')"
git push
git checkout -a "$(date '+%Y-%m-%d')"
git push
git checkout master

