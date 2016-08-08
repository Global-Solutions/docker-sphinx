#!/bin/sh

if [ -z "$CONT" ]; then
  CONT=gsol/sphinx
fi
WORKDIR=/tmp/sphinx
if [ -e Makefile ]; then
  docker run -v $(pwd):${WORKDIR} --workdir ${WORKDIR} --rm ${CONT} ${1}
else
  docker run -v $(pwd):${WORKDIR} --workdir ${WORKDIR} --rm -it ${CONT}
fi
