#!/bin/bash

# Construire l'image Docker
echo "Building the Docker image..."
docker build -t my-python-app .

# Tester l'image Docker localement
echo "Testing the Docker image..."
docker run --rm my-python-app

# Déployer l'image Docker dans un conteneur
echo "Deploying the Docker image..."
docker run -d --name my-python-container my-python-app