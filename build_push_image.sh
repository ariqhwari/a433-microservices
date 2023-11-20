#!/bin/bash

# Bangun (build) Docker image
docker build -t ghcr.io/ariqhwari/shipping-service:latest .

# Masuk ke GitHub Container Registry
echo $GH_PACKAGES_TOKEN | docker login ghcr.io -u ariqhwari --password-stdin

# Dorong (push) Docker image ke GitHub Container Registry
docker push ghcr.io/ariqhwari/shipping-service:latest

