#!/bin/bash

# (C) 2018 Henri Shustak
# Licenced under the Apache Licence
# http://www.apache.org/licenses/LICENSE-2.0


function eject_mounts {
	
	# eject mount points within /Volumes
	df | grep /Volumes/ | awk '{print $1}' | while read disk ; do diskutil unmount force "$disk" ; done
	
	# eject mount points detected with df - uncomment line below to enable
	# df -h | tail -n +3 | awk -F "%" '{print $3}' | awk -F "   " '{print $2}' | grep -wEv '/dev|/net|/home' | while read disk ; do diskutil unmount force "$disk" ; done
	
}

sleep 0.2
eject_mounts
sleep 0.5
eject_mounts
sleep 0.5
eject_mounts

exit 0


