#!/bin/bash
RSYNC_SERVER_DIR=mac
RSYNC_SERVER=192.168.3.3
RSYNC_USER=rsync

rsync -avP --progress ~/Library/Application\ Support/Chaincoin  rsync://${RSYNC_USER}@${RSYNC_SERVER}:/${RSYNC_SERVER_DIR}
