#!/bin/bash
TARGET="thisisafakewebsitetest12345.com"

echo "Checking if $TARGET is alive..."
if curl -s --connect-timeout 5 https://$TARGET > /dev/null; then
    echo "⚪ SUCCESS: $TARGET is online and reachable!"
else
    echo "⚫ ERROR: $TARGET is down or blocked by a firewall!"
fi
