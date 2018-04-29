#!/bin/bash

# local variables
#     create using the local keyword
#         local LOCAL_VAR-1
#     only functions can have local variables
function my_function() {
    local name="yunjae"  #local variable
    NAME="AAA"           #global variable
    GLOBAL_VAR=1
}

# GLOBAL_VAR not available yet.
echo "GLOBAL_VAR value BEFORE my_function called: $GLOBAL_VARAA"

my_function

# GLOBAL_VAR is NOW available
echo "GLOBAL_VAR value AFTER my_function called: $GLOBAL_VAR"
echo "GLOBAL_VAR value AFTER my_function called: $NAME"
echo "GLOBAL_VAR value AFTER my_function called: $name"