#!/bin/bash


cd ~/git/dotfiles
git add .

now=$(date)
git commit -m "automatic sync ${now}"
git push
