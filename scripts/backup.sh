#!/bin/bash

git add .

now=$(date)
git commit -m "automatic sync ${now}"
git push
