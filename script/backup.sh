#!/bin/bash

# Stop Home Assistant
ha core stop

# Create Backup
ha backups new --name "Automated backup $(date +%Y-%m-%d)"

# Start Home Assistant
ha core start

# Upload to remote SSH server
BACKUP_FILE=$(ls -rt /backup | tail -1)
scp /backup/${BACKUP_FILE} mpzbackup@daouvet.madpellzo.fr:/data/mpzbackup/homeassistant
