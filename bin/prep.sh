#!/bin/bash

set -e 

trap onExit EXIT
function onExit() {
  popd > /dev/null
}

mkdir -p build 

pushd build > /dev/null

TARGET=Debug
[ "$1" == "RELEASE" ] && TARGET=Release

cmake ../ -DCMAKE_BUILD_TYPE=${TARGET} -G "Unix Makefiles"

