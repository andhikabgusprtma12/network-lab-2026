#!/bin/bash

SERVER="192.168.66.205"
BASE_DIR="/home/dawg/network-lab-2026"
LOG="$BASE_DIR/logs/monitor.log"

mkdir -p "$(dirname "$LOG")"

if ping -c 1 "$SERVER" &> /dev/null; then
	echo "$(date '+%Y-%m-%d %H:%M:%S') - SERVER $SERVER UP" >> "$LOG"
else
	echo "$(date '+%Y-%m-%d %H:%M:%S') - SERVER $SERVER DOWN" >> "$LOG"
fi

