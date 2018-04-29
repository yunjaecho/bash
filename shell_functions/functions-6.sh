#!/bin/bash


## $$ : It is means that Process Id
function backup_file() {
    if [ -f $1 ]
    then
        echo $(basename $1)
        BACK="/tmp/$(basename ${1}).$(date +%F).$$"
        echo "Backing up $1 to ${BACK}"
        cp $1 $BACK
    fi
}

backup_file /etc/hosts
if [ $? -eq 0 ]
then
    echo "Bakup succeeded!"
    exit 1
fi