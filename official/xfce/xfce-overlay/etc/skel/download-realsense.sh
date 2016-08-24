#!/bin/bash

if [ ! -d repos ]; then
    mkdir repos
fi

## If processing is not installed
if [ ! -d repos/librealsense ]; then
    echo "Downloading librealsense..."
   cd repos
   git clone https://github.com/IntelRealSense/librealsense.git
fi
