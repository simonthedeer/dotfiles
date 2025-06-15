#!/bin/bash

# MongoDB Backup Script
# Usage: backup_mongo [backup_name]

BACKUP_NAME=${1:-$(date +"%y-%m-%d-%H%M%S-backup")}
BACKUP_DIR="/Users/simon/Library/Mobile Documents/com~apple~CloudDocs/KBS/MitWare/mitware_mongodb_backups/$BACKUP_NAME"

mongodump --oplog --host 192.168.1.33 --port 27017 --out "$BACKUP_DIR"
