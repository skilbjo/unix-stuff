#!/bin/sh

DEPLOYDIR=~/Code/Node/app/homeawayjs

GIT_WORK_TREE="$DEPLOYDIR" git checkout -f

cd $DEPLOYDIR

forever stop homeaway.js

npm install

forever start homeaway.js

echo "All done :D"


