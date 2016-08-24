#!/bin/bash


## If processing is not installed
if [ -d repos/libfreenect ]; then
    cd repos/libfreenect
    mkdir build ; cd build
    cmake ..
    make
    sudo make install
fi
