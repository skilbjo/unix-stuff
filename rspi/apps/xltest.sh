#!/bin/sh

DEPLOYDIR=~/Code/Node/xltest_app

GIT_WORK_TREE="$DEPLOYDIR" git checkout -f

cd "$DEPLOYDIR"

#sudo forever stop gulp.js

npm install

forever gulp

echo "all done ;)"


