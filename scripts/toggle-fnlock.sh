#!/bin/bash
FN_LOCK_PATH="/sys/devices/pci0000:00/0000:00:14.3/PNP0C09:00/VPC2004:00/fn_lock"

current=$(cat $FN_LOCK_PATH)

if [ "$current" -eq 0 ]; then
    echo 1 | sudo tee $FN_LOCK_PATH > /dev/null
else
    echo 0 | sudo tee $FN_LOCK_PATH > /dev/null
fi
