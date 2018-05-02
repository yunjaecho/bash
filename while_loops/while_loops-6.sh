#!/bin/bash

FS_NUM=1

grep file /etc/fstab | while read FS MP REST
do
    echo "${FS_NUM}: file system: ${FS}"
    echo "${FS_NUM}: mount point: ${MP}"
    echo "${FS_NUM}: REST: ${REST}"
    ((FS_NUM++))
done