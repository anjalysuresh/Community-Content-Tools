#!/bin/bash
cd Content_Tools
sudo docker-compose up -d db 
cd H5P
sudo sed -i 's,COLLAB_ROOT=http://172.17.0.1:7000,COLLAB_ROOT=http://10.129.27.30:7000,g' .env.docker
sudo sed -i 's,H5P_ROOT=http://172.17.0.1:8000,H5P_ROOT=http://10.129.27.30:8000,g' .env.docker

sudo docker build -t h5p_image .
cd ..
cd ..
pwd
#cd Content_Tools
git clone https://github.com/ether/etherpad-lite 
cd etherpad-lite
pwd
sudo cp -r * ../Content_Tools/etherpad-lite/ 
cd ..
pwd
cd Content_Tools/etherpad-lite/
sudo docker build -t etherpadlite .

 
