#!/bin/bash

# (C) 2018 Henri Shustak
# Licenced under the Apache Licence
# http://www.apache.org/licenses/LICENSE-2.0


sleep 0.2

df | grep /Volumes/ | awk '{print $1}' | while read disk ; do diskutil unmount force "$disk" ; done

sleep 0.5

df | grep /Volumes/ | awk '{print $1}' | while read disk ; do diskutil unmount force "$disk" ; done

sleep 0.5

df | grep /Volumes/ | awk '{print $1}' | while read disk ; do diskutil unmount force "$disk" ; done


exit 0


