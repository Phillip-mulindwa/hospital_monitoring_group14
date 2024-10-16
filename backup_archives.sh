#!/bin/bash
archive_dir="archived_logs_group14" logfile="backup_log.txt"
mkdir -p $archive_dir
mv heart_rate_log.txt_* $archive_dir/ 2>/dev/null && echo "$(date): Files archived to $archive_dir." >> $logfile || echo "$(date): No archived files found." >> $logfile
remote_host="8669535c4480.6b7419f6.alu-cod.online" 
remote_user="8669535c4480"
remote_dir="/home/"
ssh -o StrictHostKeyChecking=no $remote_user@$remote_host "mkdir -p $remote_dir" scp -o StrictHostKeyChecking=no $archive_dir/* $remote_user@$remote_host:$remote_dir && echo "$(date): Backup successful." >> $logfile || echo "$(date): Backup failed." >> $logfile
