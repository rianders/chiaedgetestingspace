#!/bin/bash

hash=$(git rev-parse --short HEAD)

echo $hash

docker run $DEVICES ecy14mhfh/testserial:$hash