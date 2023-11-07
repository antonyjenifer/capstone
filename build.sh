#!/bin/bash

# Build Docker image
docker build -t reactdemo:v1.2 .
# Run Docker container
docker run -d -p 3000:80 reactdemo:v1.2 
