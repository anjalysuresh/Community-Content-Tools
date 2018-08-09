#!/bin/bash
cd Content_Tools
sudo docker-compose up -d db 
sudo sed  's,COLLAB_ROOT=http://172.17.0.1:7000,COLLAB_ROOT=http://10.129.27.30:7000,g' .env.docker
sudo sed  's,H5P=http://172.17.0.1:7000,H5P_ROOT=http://10.129.27.30:7000,g' .env.docker
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
