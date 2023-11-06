#!/bin/bash

# Membangun Docker Image dari Dockerfile
docker build -t item-app:v1 .

# Menampilkan daftar image Docker
docker images

# Login ke Docker Hub dengan menggunakan variabel PASSWORD_DOCKER_HUB
echo $PASSWORD_DOCKER_HUB | docker login -u ariqhwari --password-stdin

# Memberikan tag ulang image "item-app:v1" sebagai "ariqhwari/item-app:v1"
docker tag item-app:v1 ariqhwari/item-app:v1

# Mengunggah (push) image ke Docker Hub
docker push ariqhwari/item-app:v1
