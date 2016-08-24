#!/bin/bash


if [ ! -d repos ]; then
    mkdir repos
fi

## If processing is not installed
if [ ! -d repos/libfreenect ]; then
    echo "Downloading libfreenect..."
    cd repos

    git clone https://github.com/OpenKinect/libfreenect.git
fi
