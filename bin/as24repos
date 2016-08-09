#!/bin/sh

repoUser="autoscout24"

curl -q \
	-u "${as24_git_token}:x-oauth-basic" \
	-sk "https://api.github.com/orgs/${repoUser}/repos?type=private&sort=created&direction=asc&per_page=200" \
| grep '"name"' \
| awk -F': "' '{print $2}' \
| sed -e 's/",//g'
