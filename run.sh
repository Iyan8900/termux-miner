#!/bin/bash

set -e
# Replace changeme with your values. Check out readme for more.
POOL="ETH"
PORT=changeme
MYADDRESS="0xEc56F923D422674a193b0636284a9d97D57D9DB3"
COINNAME="ETHEREUM"

cd xmrig/build

# executable permissions
echo "Setting executable permissions"
if ! chmod +x xmrig; then
    echo "Error: Failed to set executable permissions"
    exit 1
fi

echo "Starting now"
./xmrig -o $POOL:$PORT -u $MYADDRESS --tls --coin $COINNAME
