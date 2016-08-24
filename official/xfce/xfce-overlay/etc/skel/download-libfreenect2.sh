#!/bin/bash

if [ ! -d repos ]; then
    mkdir repos
fi

## If processing is not installed
if [ ! -d repos/libfreenect2 ]; then
    echo "Downloading librealsense..."
    cd repos
    git clone -b wip-k22v4l https://github.com/poqudrof/libfreenect2.git
    cd libfreenect2/depends/
    sh install_deps.sh
fi
