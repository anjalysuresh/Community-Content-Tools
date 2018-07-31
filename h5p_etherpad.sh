#!/bin/bash
sudo docker-compose up -d db
cd H5P
sudo docker build -t h5p_image .

git clone https://github.com/ether/etherpad-lite 
cd etherpad-lite/
sudo cp -r * ../Content_Tools/etherpad-lite/ 

cd Content_Tools/etherpad-lite/
sudo docker build -t etherpadlite .
