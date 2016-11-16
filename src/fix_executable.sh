#!/bin/sh
appname="$1"
qt="$2"
binpath="$3"
project_path="$4"
distro=$project_path/deb/files

#### Clean the app
strip $binpath/$appname
chrpath -d $binpath/$appname

#### Create files tree ####
cd $distro
rm -fr $distro/*
mkdir bin
mkdir -p libs/plugins
cp -fr $binpath $distro
chmod +x  $distro/bin/$appname.sh
mv -f $distro/bin/$appname.sh $distro
cp -fr $qt/lib/* $distro/libs
cp -fr $qt/plugins $distro/libs
