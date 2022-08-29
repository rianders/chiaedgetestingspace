#!/bin/bash

hash_tsnb=$(git rev-parse --short HEAD)

echo $hash_tsnb

docker run -d --name BalImgCon  --mount source=balImage,target=/app/balimages --privileged -it ecy14mhfh/balenatest:$hash_tsnb #/bin/bash
#docker run -p 8888:8888 --privileged -it ecy14mhfh/balenatest:$hash_tsnb /bin/bash