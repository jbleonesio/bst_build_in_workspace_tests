#!/bin/sh

# Create Python virtual environment
python3 -m venv env
source env/bin/activate

# Install specific BuildStream version
pip install --upgrade pip
pip install BuildStream==2.0.1
pip install BuildStream-external dulwich packaging

# Build project inside a workspace
bst workspace close hello.bst ; rm -rf workspace
bst workspace open hello.bst --directory=workspace
bst build hello.bst