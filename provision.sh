#!/bin/bash

docker build -t provision -f Dockerfile.provision ./
docker run -v $(pwd):/out provision
