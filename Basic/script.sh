#!/bin/bash

HELP=false
VERBOSE=false
ENV=""

while getopts "hve:" opt; do
  case $opt in
  h) HELP=true ;;
  v) VERBOSE=true ;;
  e) ENV=$OPTARG ;;
  *) exit 1;;
  esac
done

echo "Deploying to #ENV ${ENV} with VERBOSE: ${VERBOSE}"