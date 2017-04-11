#!/bin/sh


echo "
Type 1. Staged Tracked files - git checkout .

Type 2. Unstaged Tracked files - git clean -f

Type 3. Unstaged UnTracked files a.k.a UnTracked files - git reset --hard"

git checkout .
git clean -f -d
git reset --hard

echo "done"
