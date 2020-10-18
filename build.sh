#!/bin/bash

set -e

./bin/distclean.sh
./bin/prep.sh 
./bin/build.sh 
./bin/test.sh 
./bin/package.sh 

