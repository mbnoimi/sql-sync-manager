#!/bin/bash

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
mkdir -p $distro/bin
mkdir -p $distro/libs/plugins
cp -f $binpath/$appname $distro/bin/$appname
chmod +x $distro/bin/$appname
cp -f $project_path/deb/$appname.sh $distro/$appname.sh
chmod +x $distro/$appname.sh
cp -f $project_path/deb/qt.conf $distro/bin/qt.conf
cp -fr $qt/lib/* $distro/libs
cp -fr $qt/plugins $distro/libs
rm -fr $distro/libs/cmake/ $distro/libs/pkgconfig/
shopt -s extglob
cd $distro/libs/plugins/
rm -fr !(sqldrivers|platforms)
cd $distro/libs/
rm -fr !(plugins|libicudata.so*|libicui18n.so*|libicuuc.so.56*|libqgsttools_p.so*|libQt5Core.so*|libQt5Sql.so*)


