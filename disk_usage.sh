#!/bin/bash
echo "Check disk usage in linux system"
disk_size='df -h|grep "dev/mapper/ubuntu--vg-ubuntu--lv" | awk '{print $6}'|cut -d '% -f 1'
echo "$disk_size% of disk is filled"
if [ "$disk_size" -gt 80 ];
then
    echo "Disk size is greater than 80%, please delete some files or expand the disk"
else
    echo "Enough disk is available"
fi
