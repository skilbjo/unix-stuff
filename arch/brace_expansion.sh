#!/bin/bash

UPDATE="sudo apt-get update; sudo apt-get upgrade"
PRCOESS="ps aux | grep node"
INSTALL="sudo apt-get install rsync"
LSUSB="lsusb"
COMMAND=$LSUSB

for i in {1..4}; do
	ssh pi$i \"$COMMAND\"
done
