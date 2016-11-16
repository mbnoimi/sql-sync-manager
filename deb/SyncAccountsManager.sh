#!/bin/sh

# Don't spawn children shells unnecessarily by using `
dir=$(dirname $(readlink -f "$0"))

# The following might happen to be pretty important
cd $dir'/bin'

# Execute from the current shell's context and no need to export if you don't spawn a new shell process
app=$dir'/bin/SyncAccountsManager' 

LD_LIBRARY_PATH=$dir'/libs:'$LD_LIBRARY_PATH QT_QPA_FONTDIR=$dir'/fonts' $app "$@"
