#!/bin/sh

# Create Python virtual environment
python3 -m venv env
source env/bin/activate

# Install specific BuildStream version
pip install --upgrade pip
pip install BuildStream==1.6.8
pip install BuildStream-external

# Build project inside a workspace
bst workspace close hello.bst ; rm -rf workspace
bst workspace open hello.bst workspace
bst build hello.bst