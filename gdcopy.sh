#!/bin/sh
# $DRIVE3 is source, $DRIVE4 is destination
#rclone --checksum sync "$DRIVE_SOURCE": "$DRIVE_TARGET": --transfers 48 -q --drive-server-side-across-configs --create-empty-src-dirs --fast-list
