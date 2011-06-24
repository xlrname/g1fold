#!/bin/bash
cat test.result | python script/createHTML.py -p "" | sort -n -k 2 -t '!' | python script/createHTML.py -c "" > result.html | google-chrome result.html
