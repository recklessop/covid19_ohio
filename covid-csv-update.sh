#!/bin/bash
cd /home/justin/covid19_ohio
curl -o COVIDSummaryData.csv https://coronavirus.ohio.gov/static/dashboards/COVIDSummaryData.csv
curl -o COVIDSummaryDataZIP.csv https://coronavirus.ohio.gov/static/dashboards/COVIDSummaryDataZIP.csv
curl -o school_reporting.csv https://coronavirus.ohio.gov/static/dashboards/school_reporting.csv
curl -o school_metadata.pdf https://coronavirus.ohio.gov/static/dashboards/school-data-definitions.pdf
curl -o Wastewater_Dashboard.csv http://coronavirus.ohio.gov/static/wastewater/ODH_Dashboard.csv
curl -o Wastewater_SiteInfo.csv https://coronavirus.ohio.gov/static/wastewater/Site_Information.csv
curl -o Wastewater_metadata.csv http://coronavirus.ohio.gov/static/wastewater/metadata.csv
git add *
git commit -m "$(date '+%Y-%m-%d')"
git push
git checkout -b "$(date '+%Y-%m-%d')"
git push --set-upstream origin "$(date '+%Y-%m-%d')"
git checkout master

