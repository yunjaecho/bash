#!/bin/bash

HOST="google.com"

ping -c 1 $HOST

# $? is means that (ping -c 1 $HOST) execute result code
# -eq : same
if [ "$?" -eq "0" ]
then
    echo "$HOST reachable"
else
    echo "$HOST unreachable"
fi

#==================================

if [ "$?" -ne "0" ]
then
    echo "$HOST unreachable"
fi

#==================================

ping -c 1 $HOST
RETURN_CODE=$?

if [ "RETURN_CODE" -ne "0" ]
then
    echo "$HOST unreachable"
fi

#==================================
ping -c i $HOST && echo "$HOST reachable."

