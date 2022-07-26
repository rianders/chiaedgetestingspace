#!/bin/bash

hash_pht=$(git rev-parse --short HEAD)

echo $hash_pht

docker run ecy14mhfh/pihattest:$hash_pht