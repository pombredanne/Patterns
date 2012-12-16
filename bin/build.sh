#!/usr/bin/env bash

if [[ -z "$1" ]]
then
echo "You must give a version number. eg: ./bin/build.sh 1.0.0"

else
echo "** building parsley.min.js version " $1
ruby ./bin/minify parsley.js dist/parsley.min.js $1 --force
echo "  done!"

echo "** building parsley-standalone.min.js version " $1
ruby ./bin/minify resources/zepto-1.0rc1[zepto.event.data].min.js parsley.js dist/parsley-standalone.min.js $1 --force
echo "  done!"
fi