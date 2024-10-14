#!/usr/bin/env bash
group_number=14

mkdir -p archived_logs_group14
mv heart_rate_log.txt_* archived_logs_group14/
scp archived_logs_group14/* Phillip-mulindwa@PhilosVictus:/home/
echo "Backup completed and archived logs moved to archived_logs_group14"

