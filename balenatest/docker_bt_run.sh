#!/bin/bash

hash_tsnb=$(git rev-parse --short HEAD)

echo $hash_tsnb

docker run -d --name test -v balenatest:/app --privileged -it ecy14mhfh/balenatest:$hash_tsnb #/bin/bash
#docker run -p 8888:8888 --privileged -it ecy14mhfh/balenatest:$hash_tsnb /bin/bash