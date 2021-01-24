#!/bin/sh
rclone copy onedrive: gdrive_mirror: --transfers 48 -v
