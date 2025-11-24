#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 folder_to_backup"
    exit 1
fi

timestamp=$(date +"%Y%m%d_%H%M%S")
backup_name="backup_$timestamp"

cp -r "$1" "$backup_name"

echo "Backup created: $backup_name"
