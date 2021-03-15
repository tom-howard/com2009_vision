#! /bin/bash

pip install matplotlib

mkdir -p ~/myrosdata/week6_images/

cd ~/catkin_ws/src

git clone https://github.com/tom-howard/com2009_vision.git

cd ./com2009_vision/src/

chmod +x image_colours.py colour_search.py

cp ./models/line_following_track ~/.gazebo/models/