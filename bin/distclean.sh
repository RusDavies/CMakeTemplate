#!/bin/bash

set -e 

if [ -e ./build/ ]; then
  rm -rf ./build/ 
  mkdir -p ./build
fi

