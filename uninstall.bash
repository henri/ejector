#!/usr/bin/env bash

# (C) 2013 Henri Shustak
# Licenced under the Apache Licence
# http://www.apache.org/licenses/LICENSE-2.0

# Example build script version 1.0

unload -w /Library/LaunchDaemons/org.lucidsystems.ejector.plist
sleep 0.1

rm -f "/Library/LaunchDaemons/org.lucidsystems.ejector.plist"
rm -rf "/Library/Application Support/Ejector"

exit 0 
