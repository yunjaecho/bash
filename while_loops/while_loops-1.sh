#!/bin/bash

INDEX=1
while [ $INDEX -lt 6 ]
do
    echo "Creating project-${INDEX}"
    mkdir /home/comp1/project-${INDEX}
    ((INDEX++))
done