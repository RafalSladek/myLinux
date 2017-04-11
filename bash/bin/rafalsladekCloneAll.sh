#!/bin/sh

rafalsladekRepos | while read line; do
	as24clonebyname "github.com" "rafalsladek" "$line" debug
done
