#!/bin/sh

RESTIC_TAG_LATEST=$(curl --silent "https://api.github.com/repos/restic/restic/releases/latest" | grep -Po '"tag_name": "v\K.*?(?=")')
echo "Downloading and installing restic v$RESTIC_TAG_LATEST ..."
RESTIC_URL=https://github.com/restic/restic/releases/download/v${RESTIC_TAG_LATEST}/restic_${RESTIC_TAG_LATEST}_linux_amd64.bz2
curl -L --silent ${RESTIC_URL} | bunzip2 > /usr/bin/restic
chmod 755 /usr/bin/restic
