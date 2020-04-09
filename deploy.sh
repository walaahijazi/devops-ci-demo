#! /bin/bash

# Define some path
SRC=./web
DST="/var/ww/html"

# Check if deployment destination exists
if [ -d "$DST" ]; then
    cp -r $SRC/* $DST
fi
