#!/bin/sh
rclone --checksum sync "$DRIVE_SOURCE": "$DRIVE_TARGET": --transfers 48 -q --create-empty-src-dirs --fast-list
