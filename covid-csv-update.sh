#!/bin/bash
cd /home/justin/covid19_ohio
curl -o COVIDSummaryData.csv https://coronavirus.ohio.gov/static/COVIDSummaryData.csv
curl -o COVIDSummaryData.csv https://coronavirus.ohio.gov/static/COVIDSummaryDataZIP.csv
git add *
git commit -m "$(date '+%Y-%m-%d')"
git push
git checkout -b "$(date '+%Y-%m-%d')"
git push --set-upstream origin "$(date '+%Y-%m-%d')"
git checkout master

