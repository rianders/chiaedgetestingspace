#!/bin/bash

hash=$(git rev-parse --short HEAD)

echo $hash

docker run ecy14mhfh/pihattest:$hash