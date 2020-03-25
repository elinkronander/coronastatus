#!/bin/bash

# Read SE.txt from geonames and create postal code coordinate json file



(echo '{'
tr -d ' ' < SE.txt | awk -F '\t' '
   NR > 1 { printf(", ") } { print "\"" $2 "\": {", "\"lat\": \"" $10 "\", \"lon\": \""  $11 "\" }" }';
      echo '}' ) | json_pp



