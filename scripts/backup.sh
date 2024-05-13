#!/bin/bash

SSH_KEY="/home/justinmiron/.ssh/automated_backup"

git add .

now=$(date)
git commit -m "automatic sync ${now}"
git push
