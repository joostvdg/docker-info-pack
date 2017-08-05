#!/bin/bash
TAGNAME="dockerinfo-docs-image"

echo "# Building new image with tag: $TAGNAME"
docker build --tag=$TAGNAME .
