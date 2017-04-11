#!/bin/sh

as24repos | while read line; do
	as24clonebyname "github.com" "autoscout24" "$line"
done
