#!/bin/bash

REGISTRY_URL="https://index.docker.io/v1/"
USERNAME="ibnuzamra"
read -s -p "Enter Docker Hub password: " PASSWORD
echo "$PASSWORD" | docker login $REGISTRY_URL -u $USERNAME --password-stdin
unset PASSWORD

# Docker login
docker login --username "$username" --password "$password" "$registry"

# Build Docker Image
docker build -t devops-mif_images:testing .

# Tag Docker Image
docker tag devops-mif_images:testing ibnuzamra/devops-mif_images:testing

# Docker Push Image
docker push ibnuzamra/devops-mif_images:testing

# Run docker-compose
docker-compose up -d

# Deploy with Ansible
ansible-playbook -i hosts ansible-devops-mif.yaml