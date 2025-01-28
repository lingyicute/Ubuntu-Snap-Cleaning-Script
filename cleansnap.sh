#!/bin/bash

echo "脚本运行时间: $(date)" >> /root/cleansnap-final-runtime.txt
 #CLOSE ALL SNAPS BEFORE RUNNING THIS
 set -eu
 LANG=en_US.UTF-8 snap list --all | awk '/disabled/{print $1, $3}' |
     while read snapname revision; do
         snap remove "$snapname" --revision="$revision"
     done
echo "脚本运行结束时间: $(date)" >> /root/cleansnap-final-runtime.txt
echo "-------" >> /root/cleansnap-final-runtime.txt
