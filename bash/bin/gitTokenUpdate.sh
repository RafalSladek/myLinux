#!/bin/sh

echo "old git url..."
git remote -v

echo "updating git oauth token..."
git remote set-url origin git@github.com:$(git remote -v | head -1 | awk -F'github.com/' '{print $2}' | awk -F' ' '{print $1}')

echo "new git url..."
git remote -v

echo "done"
