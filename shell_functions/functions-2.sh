#!/bin/bash

function hello() {
    echo "Hello!"
    now
}

# More preformated options :
#   %R hours, minutes (24 hour clock) hh:mm e.g. 17:28
#   %T hours, minutes, seconds (24-hour clock) 17:28:55
#   %X locale’s time representation (%H:%M:%S) 05:28:55 PM
function now() {
    echo "It's $(date +%r)"
}

hello
