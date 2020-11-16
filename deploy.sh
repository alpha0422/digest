#!/usr/bin/env bash

# On dev branch

git checkout -b _book
gitbook build
git add _book/
git commit -m "Include _book."
git push --delete origin gh-pages
git subtree push --prefix=_book origin gh-pages
git checkout dev
git branch -D _book
