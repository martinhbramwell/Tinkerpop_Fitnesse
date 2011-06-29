#!/bin/bash

WORKING_DIR=$(pwd)
# /var/lib/jenkins/jobs/Tinkerpop_Fitnesse/workspace

FITNESS_ROOT="../../StartFitnesse/workspace/FitNesseRoot/"

echo "Collecting into ${WORKING_DIR}"
cp -r ${FITNESS_ROOT}/FrontPage $WORKING_DIR
cp -r ${FITNESS_ROOT}/TinkerPop $WORKING_DIR

echo "Deleting generated files.  Keeping manual files."
find $WORKING_DIR -type f -name "*.zip" -exec rm -f {} \;


