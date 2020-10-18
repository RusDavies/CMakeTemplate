#!/bin/bash

set -e 

pushd build > /dev/null 

make all

popd > /dev/null 

