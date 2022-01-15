
#!/bin/bash

if [ -z $1 ]||[ -z $2 ]; then
    echo usage: $0 sourcedir targetdir
else
    SRCDIR=$1
    DSCDIR=$2
    BACKUPFILE=backup.$(date +%y%m%d%H%M%S).tar.gz
    if [ -d $DSTDIR ]; then
        sudo tar -cvzf $DSTDIR/$BACKUPFILE $SRCDIR
    else
        mkdir $DSTDIR
        sudo tar -cvzf $DSTDIR/$BACKUPFILE $SRCDIR
    fi
fi
