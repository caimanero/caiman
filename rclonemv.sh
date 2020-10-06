#!/bin/bash
if pidof -o %PPID -x "rclonemv.sh"; then
exit 1
fi
rclone move /var/lib/transmission-daemon/incomplete plexcloud:torrent/ -v --no-traverse --log-file=/home/rclone-upload.log
exit
