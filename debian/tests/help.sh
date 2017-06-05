#!/bin/sh

set -e

# At least check we can execute the main binary
# to catch missing dependenies
echo -n "Test1: checking help output..."
xvfb-run -a /usr/lib/puremail/puremail -help >/dev/null
echo "done."

echo -n "Test2: checking version output..."
xvfb-run -a /usr/lib/puremail/puremail --version | grep -qs puremail
echo "done."
