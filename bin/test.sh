#!/bin/bash

set -e 

TESTDIR=./build/tst 

if [ -e "${TESTDIR}" ]; then
  
  trap onExit EXIT
  function onExit() {
    popd > /dev/null
  }

  pushd "${TESTDIR}" > /dev/null
  
  for tst in $(ls | grep _tst); do
    ./${tst} ${@} 
  done

else
  printf "WARNING: No '${TESTDIR}' folder exists. Skipping unit testing.\n"

fi

