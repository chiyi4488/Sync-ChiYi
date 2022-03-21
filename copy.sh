#!/bin/sh
# -q 安靜，Action 不輸出詳細傳輸資料名和過程。
rclone --checksum sync google_drive: onedrive: --transfers 48 -q --create-empty-src-dirs --fast-list

#rclone --checksum sync "$DRIVE_SOURCE": "$DRIVE_TARGET": --transfers 48 -q --drive-server-side-across-configs --create-empty-src-dirs --fast-list
