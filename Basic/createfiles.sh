#!/bin/bash

cd Test

#while IFS= read -r line; do
#  echo "$line"
#done <<<  "$(ls -lt)"
newest_file=$(ls -lt | awk 'NR==2 {print $9}')

echo "${newest_file}"

cp ${newest_file}  ${newest_file}_$(date +'%y_%m_%d')

oldest_file=$(ls -ltr | awk 'NR==2 {print $9}')

echo "${oldest_file}"

rm ${oldest_file}