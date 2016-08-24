#!/bin/bash

## If processing is not installed
if [ -d repos/librealsense ]; then
   cd repos/librealsense
   echo "Compile & Install librealsense..."
   make
   sudo make install
   cd scripts
   sh ./patch-arch.sh
fi
