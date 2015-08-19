#!/bin/sh

DEPLOYDIR=~/node/app/dropkey

GIT_WORK_TREE="$DEPLOYDIR" git checkout -f

cd "$DEPLOYDIR"

forever stop ./node_modules/.bin/gulp
#killall node
#killall gulp

npm install

nohup forever ./node_modules/.bin/gulp >logfile 2>&1 & 
#gulp
#nf start -p 8080 -e lib/dev/dev.env

echo "all done ;)"
