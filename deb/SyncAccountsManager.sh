#!/bin/sh

dir="$(dirname `readlink -f $0`)"
LD_LIBRARY_PATH="$dir/libs:$LD_LIBRARY_PATH"
QT_QPA_FONTDIR="$dir/fonts"
export LD_LIBRARY_PATH QT_QPA_FONTDIR
exec $dir/bin/SyncAccountsManager "$\@"

