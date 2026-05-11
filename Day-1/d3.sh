#!/bin/bash

PATH=$1

if [[ -f ${PATH} ]]; then echo "File exists"
elif [[ -d ${PATH} ]]; then echo "It is directory"
else echo "It not available";
fi
