#!/bin/bash

# Membangun Docker image dengan tag ghcr.io/ariqhwari/karsajobs:latest
docker build -t ghcr.io/ariqhwari/karsajobs:latest .

# Login ke GitHub Container Registry menggunakan token autentikasi
docker login ghcr.io -u ariqhwari -p $PACKAGES_TOKEN 

# Mengunggah Docker image ke GitHub Container Registry
docker push ghcr.io/ariqhwari/karsajobs:latest