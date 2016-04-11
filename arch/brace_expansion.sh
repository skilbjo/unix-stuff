#!/bin/bash

COMMAND="ps aux | grep node"

for i in {1..4}; do
	echo ssh pi$i \"$COMMAND\"
done
