#!/bin/bash

set -e 

pushd build > /dev/null

TARGET=Debug
[ "$1" == "RELEASE" ] && TARGET=Release

cmake ../ -DCMAKE_BUILD_TYPE=i${TARGET} -G "Unix Makefiles"

popd > /dev/null 
