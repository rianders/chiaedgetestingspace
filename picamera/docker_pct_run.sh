#!/bin/bash

hash_tsnb=$(git rev-parse --short HEAD)

echo $hash_tsnb


docker run --rm --privileged -it  ecy14mhfh/picamtwo:$hash_tsnb

#docker run --rm --privileged -it -v /tmp/foo:/app/picamTwo_img ecy14mhfh/picametwo:$hash_tsnb sh
#ls /app/picamTwo_img/

