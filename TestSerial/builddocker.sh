
#!/bin/bash

hash=$(git rev-parse --short HEAD)
docker build --platform linux/arm64 -t ecy14mhfh/testserial:$hash -f Dockerfile .
docker push rianders/car:$hash
echo $hash
