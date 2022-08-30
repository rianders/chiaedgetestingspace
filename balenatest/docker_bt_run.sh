#!/bin/bash

hash_tsnb=$(git rev-parse --short HEAD)

echo $hash_tsnb

#docker run -d --name BalImgCon  --mount source=balImage,target=/app/balimages --privileged -it ecy14mhfh/balenatest:$hash_tsnb #/bin/bash

docker run -d --name BalImgCon  ecy14mhfh/balenatest:$hash_tsnb

docker run --rm -v /var/tmp:/host:rw oraclelinux:6 --volumes-from BalImgCon cp -r /var/www/html /host/BalImgCon_files


#docker run -p 8888:8888 --privileged -it ecy14mhfh/balenatest:$hash_tsnb /bin/bash