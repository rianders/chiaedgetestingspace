#!/bin/bash

hash_tsnb=$(git rev-parse --short HEAD)

echo $hash_tsnb

docker run -p 8888:8888 ecy14mhfh/testdocker:$hash_tsnb
