#!/bin/bash

# Membangun Docker Image dari Dockerfile
docker build -t item-app:v1 .

# Menampilkan daftar image Docker
docker images

# Login ke Docker Hub dengan menggunakan variabel PASSWORD_DOCKER_HUB
cat ../dockerpass.txt | docker login -username ariqhwari --password-stdin
docker tag item-app:v1 ariqhwari/item-app:v1
docker push ariqhwari/item-app:v1
