#!/bin/sh

repoUser="rafalsladek"

curl -q \
	-u "${as24_git_token}:x-oauth-basic" \
	-sk "https://api.github.com/users/${repoUser}/repos?type=private&sort=created&direction=asc&page=1&per_page=100" \
| grep '"name"' \
| awk -F': "' '{print $2}' \
| sed -e 's/",//g'
