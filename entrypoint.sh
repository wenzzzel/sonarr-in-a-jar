#!/bin/sh
/app/download-config.sh # Download latest sonarr config backup and extract it
exec /init              # Start sonarr as the main process