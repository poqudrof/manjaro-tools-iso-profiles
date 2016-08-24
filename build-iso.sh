#!/bin/bash


# echo "Copy the iso-profile"
# cp -R /usr/share/manjaro-tools/iso-profiles/ ..

cd official/xfce/xfce-overlay/etc/skel

sh download-all.sh
sh download-libfreenect.sh
sh download-realsense.sh
sh download-libfreenect2.sh
