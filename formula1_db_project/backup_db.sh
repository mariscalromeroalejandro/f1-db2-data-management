#!/bin/bash
# backup_db.sh - Backs up the F1DB database

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_DIR="/home/$(whoami)/f1_backups"
mkdir -p $BACKUP_DIR

echo "Backing up database to $BACKUP_DIR/f1db_backup_$TIMESTAMP.tar.gz..."

db2move F1DB EXPORT
tar -czf $BACKUP_DIR/f1db_backup_$TIMESTAMP.tar.gz *.ixf *.del
rm -f *.ixf *.del

echo "Backup completed."