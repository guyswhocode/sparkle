#!/bin/bash
echo "Removing static files..."
rm ./site/ -rf
echo "Starting jekyll..."
jekyll serve --baseurl "" --watch