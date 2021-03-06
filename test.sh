#!/bin/bash
# Test automatique des notebooks

rm -rf "./temp"

python cleanmd.py


cd "./temp"

# CONVERT INTO NOTEBOOKS AND EXECUTE
for i in $(ls **/*.md **/*.Rmd | grep -v 'index.md$'); do
  jupytext --to py --execute "$i"
  # jupytext --to ipynb "$i"
done