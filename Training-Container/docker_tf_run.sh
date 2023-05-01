#!/bin/bash

hash=$(git rev-parse --short HEAD)

echo $hash

# this might need to be run privileged
echo "docker run trainingcontainer:$hash"

#docker run -it --rm -v $(realpath ~/notebooks) -p 8888:8888 ecy14mhfh/trainingcontainer:$hash
docker run -entrypoint="/bin/bash" -it --rm -v $(realpath ~/pi_notebooks) -p 8888:8888 ecy14mhfh/trainingcontainer:$hash