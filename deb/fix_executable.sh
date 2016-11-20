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
rm -fr $project_path/deb/files
mkdir -p $project_path/deb/files
cd $distro
mkdir bin
mkdir -p libs/plugins
cp -f $binpath/$appname $distro/bin/$appname
chmod +x  $distro/bin/$appname
cp -f $project_path/deb/$appname.sh $distro/$appname.sh
chmod +x  $distro/$appname.sh
cp -f $project_path/deb/qt.conf $distro/bin/qt.conf
cp -fr $qt/lib/* $distro/libs
cp -fr $qt/plugins $distro/libs
