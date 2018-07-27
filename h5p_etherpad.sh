#!/bin/bash
sudo docker-compose up db
cd H5p
sudo docker build -t h5p_image .
cd
git clone https://github.com/ether/etherpad-lite 
cd etherpad-lite/
sudo cp -r * ../Community-Content-Tools/etherpad-lite/ 
cd
cd Community-Content-Tools/etherpad-lite/
sudo docker build -t etherpadlite .
