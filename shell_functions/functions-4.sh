#!/bin/bash

function hello() {
    for name in $@
    do
        echo "Hello $name"
    done
}

hello Jason Dan Ryan