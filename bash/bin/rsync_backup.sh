#!/bin/bash
RSYNC_SERVER_DIR=mac
RSYNC_SERVER=192.168.3.3
RSYNC_USER=rsync

cat rsync_sources.txt | while read line
do
    echo ${line}
    rsync -avP --progress "${line}"  rsync://${RSYNC_USER}@${RSYNC_SERVER}:/${RSYNC_SERVER_DIR}   
done

