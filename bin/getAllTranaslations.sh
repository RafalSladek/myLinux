#!/bin/sh
cat cultures.txt | while read culture; do
	curl https://api.autoscout24.com/references -H "Accept-Language: $culture, Content-Type: application/json" -k > translations.$culture.$(date +%Y-%m-%d).json 
done
