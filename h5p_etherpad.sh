#!/bin/bash
cd Content_Tools
sudo docker-compose up -d db 
sed 'COLLAB_ROOT=http://10.129.27.30:7000/'  .env.docker
sed 'H5P_ROOT=http://10.129.27.30:8000/' .env.docker
cd H5P
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
