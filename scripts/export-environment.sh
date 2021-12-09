#!/usr/bin/env bash

# example:
# source scripts/export-environment.sh

# create environment yaml file natively from conda
# custom pakcages will not be recorded appropriately, so we need to add or sub them in
# usage: conda env create --file conda.yaml
conda env export > conda.yaml

# Create a top-level pip requirements file
pipdeptree --warn silence | grep -E '^[a-zA-Z0-9\-]+' > requirements.txt
# remove default packages that pip freeze would remove
sed -i -e '/pip==/d' requirements.txt
sed -i -e '/setuptools==/d' requirements.txt
sed -i -e '/wheel==/d' requirements.txt
sed -i -e '/pipx==/d' requirements.txt
sed -i -e 's/backports.functools-lru-cache==/backports.functools_lru_cache==/g' requirements.txt
