#!/bin/bash

# Langkah 1: Membangun Docker image dengan tag ghcr.io/ariqhwari/karsajobs-ui:latest
docker build -t ghcr.io/ariqhwari/karsajobs-ui:latest .

# Langkah 2: Login ke GitHub Container Registry menggunakan token autentikasi
docker login ghcr.io -u ariqhwari -p $GITHUB_PACKAGES_TOKEN

# Langkah 3: Mengunggah Docker image ke GitHub Container Registry
docker push ghcr.io/ariqhwari/karsajobs-ui:latest