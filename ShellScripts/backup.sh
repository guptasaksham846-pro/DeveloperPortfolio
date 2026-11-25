#!/usr/bin/env bash
# Author: Saksham Gupta

if [ -z "$1" ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: Folder '$1' does not exist."
    exit 1
fi

BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE_NAME="backup_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="$BACKUP_DIR/$ARCHIVE_NAME"

tar -czf "$ARCHIVE_PATH" -C "$(dirname "$1")" "$(basename "$1")" 2>/dev/null

FILE_SIZE=$(du -h "$ARCHIVE_PATH" | cut -f1)
echo "Success: Backup created -> $ARCHIVE_NAME (Size: $FILE_SIZE)"
echo "[$TIMESTAMP] SUCCESS: $ARCHIVE_NAME ($FILE_SIZE)" >> "$BACKUP_DIR/backup.log"
