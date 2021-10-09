#!/bin/bash
echo "Removing cache files..."
rm ./site/ -rfv
rm ./.jekyll-cache/ -rfv
echo "Starting jekyll..."
jekyll serve --baseurl "" --watch --trace
