#!/bin/bash
current_date=$(date --utc)
disk=$(df -h | awk 'NR==3 {print $5}' | tr -d '%')
echo "$disk"
if [ "$disk" -gt 70 ]; then
	cd /tmp
	echo "$current_date" >> disk_full.log
fi
