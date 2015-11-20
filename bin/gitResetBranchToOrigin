#!/bin/sh


echo "old git status..."
git status

echo "fetching from origing..."
git fetch origin

echo "reseting branch to master head..."
git reset --hard origin/master

echo "cleaning local untracked uncommited files and dirs..."
git clean -d -f

echo "new git status..."
git status

echo "done"
