#!/bin/bash

echo "Executing script: $0"

# $@ all argument array
for USER in $@
do
    echo "archiving user: $USER"
    #Lock the account
    passwd -l $USER
    # Create an archive of the home directory
    tar cf /archives/${USER}.tar.gz /home/${USER}
done
