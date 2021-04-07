#!/bin/bash

# Setting up a virtual environment
conda create certTrail 
conda env list
conda activate certTrail

# Libraries needed
conda install selenium
conda install beautifulsoup4
conda install lxml
pip install html5li
pip install whois
pip install builtwith
conda install -c conda-forge geckodriver
