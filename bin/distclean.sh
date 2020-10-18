#!/bin/bash

set -e 

pushd build > /dev/null

rm -rf CMakeCache.txt  CMakeFiles  cmake_install.cmake  Makefile  src  tst

popd > /dev/null 

