#!/bin/bash

set -e


if [ -e ./build/packaging ]; then

  pushd ./build/packaging/ > /dev/null 
  make package
  popd > /dev/null

  mkdir ./build/RPMS
  mv ./build/*.rpm ./build/RPMS/

fi
