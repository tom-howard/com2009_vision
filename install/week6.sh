#! /bin/bash

echo "[Info] Installing additional Python packages..."
pip install matplotlib

echo "[Info] Creating a week6_images directory in ~/myrosdata/ ..."
mkdir -p ~/myrosdata/week6_images/

echo "[Info] Cloning the GitHub repo for Week 6 (com2009_vision)..."
cd ~/catkin_ws/src/
git clone https://github.com/tom-howard/com2009_vision.git
cd ./com2009_vision/src/
chmod +x image_colours.py colour_search.py

echo "[Info] Copying Gazebo model files..."
mkdir -p ~/.gazebo/models/
cp -r ./models/line_following_track ~/.gazebo/models/

echo "[Info] Running catkin_make (for good measure)..."
cd ~/catkin_ws/

catkin_make

echo "[Info] Done."
