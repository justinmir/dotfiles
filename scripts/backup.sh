#!/bin/bash

TOKEN_LOCATION="/home/justinmiron/.ssh/backup-token"

git add .

now=$(date)
git commit -m "automatic sync ${now}"
git push
