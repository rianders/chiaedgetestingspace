
#!/bin/bash

hash=$(git rev-parse --short HEAD)
docker build --platform linux/arm64 -t rianders/car:$hash -f Dockerfile .
docker push rianders/car:$hash
echo $hash
