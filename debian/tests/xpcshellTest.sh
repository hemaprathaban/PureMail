#!/bin/sh

set -e

echo -n "Checking if we can run xpcshell..."

LD_LIBRARY_PATH=/usr/lib/puremail/ \
/usr/lib/puremail-devel/sdk/bin/xpcshell \
  -g /usr/share/puremail/ debian/tests/xpcshellTest.js

echo "done."
