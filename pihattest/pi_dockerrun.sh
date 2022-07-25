#!/bin/bash

hash=$(git rev-parse --short HEAD)

echo $hash

docker -rm --name testserial-$hash run ecy14mhfh/pihattest:$hash