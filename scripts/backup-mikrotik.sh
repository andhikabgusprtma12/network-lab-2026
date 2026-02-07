#!/bin/bash

TIMESTAMP=$(date +%Y%m%d-%H%M)
BASE_DIR="/home/dawg/network-lab-2026"
BACKUP_DIR="$BASE_DIR/backups"
KEY="/home/dawg/network-lab-2026/ssh-key/id_rsa"
ROUTER="dawg@192.168.56.101"

mkdir -p "$BACKUP_DIR"

ssh -i "$KEY" "$ROUTER" "/export file=backup-$TIMESTAMP"

scp -i "$KEY" "$ROUTER:/backup-$TIMESTAMP.rsc" "$BACKUP_DIR/"

ssh -i "$KEY" "$ROUTER" "/file remove backup-$TIMESTAMP.rsc"

echo "Backup saved: $BACKUP_DIR/backup-$TIMESTAMP.rsc"

find "$BACKUP_DIR" -type d -name "*.rsc" -exec rm -rf {} +
