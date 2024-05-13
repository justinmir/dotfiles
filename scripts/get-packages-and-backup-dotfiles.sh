#!/bin/bash

set -x

BACKUP_DIR="/home/justinmiron/git/dotfiles"

cd ${BACKUP_DIR}
pacman -Qqe > ./arch/pkglist.txt
git add .

if [ ! -z "$(git status --porcelain)" ]; then
    now=$(date)
    git commit -m "automatic sync ${now}"
    git push
fi

./scripts/backup.sh
