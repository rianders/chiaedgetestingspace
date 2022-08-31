#!/bin/bash

hash_tsnb=$(git rev-parse --short HEAD)

echo $hash_tsnb



docker run --rm --privileged -it -v /tmp/foo:/app/balenaimage ecy14mhfh/balenatest:$hash_tsnb /bin/bash sh
ls /app/balenaimage/

