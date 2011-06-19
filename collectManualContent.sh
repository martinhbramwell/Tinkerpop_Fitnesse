#!/bin/bash

WORKING_DIR=$(pwd)
FITNESS_ROOT="/etc/fitnesse/FitNesseRoot/"

echo "Collecting into ${WORKING_DIR}"
cp -r ${FITNESS_ROOT}/FrontPage $WORKING_DIR
cp -r ${FITNESS_ROOT}/TinkerPop $WORKING_DIR

echo "Deleting generated files.  Keeping manual files."
find $WORKING_DIR -type f -name "*.zip" -exec rm -f {} \;


