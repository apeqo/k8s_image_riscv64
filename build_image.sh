#!/bin/bash

cd ./k8s_image

for dir in */
do
  cd "$dir"

  docker build -t ${dir::-7}:v1.26.5 .

  cd ..
done

