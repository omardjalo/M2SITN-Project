#!/usr/bin/env sh

API_URL='https://en.wikipedia.org/w/api.php'
TITLE="Bertrand_Russell"

# MacOS only :
# DATE_END=$(date -d '07/29/2017' +"%s")
# DATE_START=$(date -d '08/01/2017' +"%s")
DATE_END=1501279200
DATE_START=1501538400

QUERY_STRING='titles='$TITLE'&action=query&format=json&prop=revisions&formatversion=2'
QUERY_STRING=$QUERY_STRING'&rvlimit=max&rvstart='$DATE_START'&rvend='$DATE_END
QUERY_STRING=$QUERY_STRING'&rvprop=ids|user|timestamp'

# prettify json output if jq is installed
curl -s $API_URL?$QUERY_STRING | $(command -v jq || echo cat)
