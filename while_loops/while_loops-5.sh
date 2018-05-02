#!/bin/bash

grep file /etc/fstab | while read LINE
do
    echo "file: ${LINE}"
done