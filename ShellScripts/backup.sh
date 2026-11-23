#!/bin/bash
# Author: Bhawesh Behwal

# 1. Check that an argument was given
if [ -z "$1" ]; then
  echo "Usage: ./backup.sh <folder>"
  exit 1
fi

# 2. Check that the folder exists
if [ ! -d "$1" ]; then
  echo "Error: folder '$1' does not exist."
  exit 1
fi

# 3. Prepare destination and filename
DEST=~/DeveloperPortfolio_Backups
mkdir -p "$DEST"
TS=$(date +%Y-%m-%d_%H-%M-%S)
FILE="$DEST/backup_$TS.tar.gz"

# 4. Create the archive, report, and log
if tar -czf "$FILE" -C "$(dirname "$1")" "$(basename "$1")"; then
  SIZE=$(du -h "$FILE" | cut -f1)
  echo "Backup successful: $(basename "$FILE") (Size: $SIZE)"
  echo "$TS - SUCCESS - $FILE ($SIZE)" >> "$DEST/backup.log"
else
  echo "Backup failed."
  echo "$TS - FAILED - $1" >> "$DEST/backup.log"
  exit 1
fi
