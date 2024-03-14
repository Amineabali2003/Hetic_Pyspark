#!/bin/bash
sudo apt-get update
sudo apt  install docker.io -y
sudo apt install git 
git clone https://github.com/Amineabali2003/Hetic_Pyspark.git
cd Hetic_Pyspark/
sudo docker image build -t pyspark .
