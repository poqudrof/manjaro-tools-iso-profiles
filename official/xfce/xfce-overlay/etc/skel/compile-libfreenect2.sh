#!/bin/bash

if [ -d repos/libfreenect2 ]; then
    cd repos/libfreenect2/examples/k22v4l/
    cmake .
    make
    ln -s bin/k22v4l ../../../../bin/k22v4l
    echo "libfreenect2 installed"

    yaourt -S v4l2loopback-dkms
fi
