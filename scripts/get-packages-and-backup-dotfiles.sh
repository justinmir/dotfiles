#!/bin/bash


cd ~/git/dotfiles
pacman -Qqe > ./arch/pkglist.txt
git add .

if [ ! -z "$(git status --porcelain)" ]; then
    now=$(date)
    git commit -m "automatic sync ${now}"
    git push
fi
