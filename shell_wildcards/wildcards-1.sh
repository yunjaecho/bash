#!/bin/bash

for FILE in /home/comp1/project/bash/shell_functions/*.sh
do
    echo "copying $FILE"
    cp $FILE /tmp/
done