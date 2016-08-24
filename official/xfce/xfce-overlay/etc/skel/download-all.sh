#!/bin/bash


## If processing is not installed
if [ ! -d processing ]; then
   echo "Downloading Processing..."
   wget https://github.com/poqudrof/processing/releases/download/3.1.2-papart/linux.zip -O processing.zip

   echo "Install Processing"
   unzip processing.zip
   mv work processing
   rm processing.zip
fi


if [ ! -d sketchbook ]; then
    mkdir sketchbook
    mkdir sketchbook/libraries

    echo "Downloading Libraries..."
    wget http://reality-over-technology.com/library/libs.tgz

    echo "Downloading PapARt..."
    wget http://reality-over-technology.com/library/PapARt.tgz

    echo "Extract PapARt"

    tar xzf PapARt.tgz
    mv PapARt sketchbook/libraries
    rm PapARt.tgz

    echo "Extract libraries"
    tar xzf libs.tgz
    mv libraries/* sketchbook/libraries/
    rmdir libraries
    rm libs.tgz
fi

if [ ! -d apps/procamcalib-bin ]; then

    mkdir apps

    echo "Download ProCamCalib..."
    wget http://search.maven.org/remotecontent?filepath=org/bytedeco/procamcalib/1.2/procamcalib-1.2-bin.zip -O procamcalib-1.2.zip

    echo "Extract procamcalib"
    unzip procamcalib-1.2.zip
    mv procamcalib-bin apps/
    rm procamcalib-1.2.zip
fi
