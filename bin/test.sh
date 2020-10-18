#!/bin/bash

pushd build/tst > /dev/null 

for tst in $(ls | grep _tst); do
  ./${tst} ${@} 
done

popd > /dev/null 
