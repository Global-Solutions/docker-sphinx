#!/bin/sh

if [ -e Makefile ]; then
  make ${1}
else
  sphinx-quickstart
fi
