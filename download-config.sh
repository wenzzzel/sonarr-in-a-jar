#!/bin/sh
sshpass -p "$SFTP_PASSWORD" sftp -o StrictHostKeyChecking=no "$SFTP_USERNAME"@$SFTP_SERVER:uploads/sonarr/sonarr-latest.zip sonarr-latest.zip
unzip -o "sonarr-latest.zip" -d "extracted_backup"
cp extracted_backup/sonarr.db ../config/
cp extracted_backup/config.xml ../config/