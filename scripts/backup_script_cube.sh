#!/bin/bash

# MongoDB Backup Script
# Usage: backup_mongo [backup_name]

# read -p "Enter a suffix for the backup name (optional): " SUFFIX

BACKUP_NAME="mongo-backup_$(date +%Y-%m-%d_T%H:%M:%S)"
if [[ -n "$1" ]]; then
  BACKUP_NAME="${BACKUP_NAME}_$1"
fi
BACKUP_DIR="/Users/simon/Library/Mobile Documents/com~apple~CloudDocs/KBS/MitWare/mitware_mongodb_backups/$BACKUP_NAME"

mongodump --oplog --host 192.168.1.33 --port 27017 --out "$BACKUP_DIR"
