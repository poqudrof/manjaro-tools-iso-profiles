#!/bin/bash


# echo "Copy the iso-profile"
# cp -R /usr/share/manjaro-tools/iso-profiles/ ..

cd official/xfce/xfce-overlay


echo "Copy the udev rules"
cp /etc/udev/rules.d/* etc/udev/rules.d/


echo "Copy the base files...."
## TODO: where do we put them ?

cd xfce-overlay/etc/skel
echo "Download Processing, PapARt, and all depedencies..."

sh download-all.sh
