#!/bin/bash
cd Content_Tools
sudo docker-compose up -d db
cd H5P
sudo docker build -t h5p_image .
cd pipeline_multirepo
pwd
#cd Content_Tools
git clone https://github.com/ether/etherpad-lite 
cd etherpad-lite
pwd
sudo cp -r * ./Content_Tools/etherpad-lite/ 
pwd
#cd Content_Tools/etherpad-lite/
sudo docker build -t etherpadlite .
