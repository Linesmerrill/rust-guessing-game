#!/bin/bash

echo $((RANDOM%=200)) >> config.txt
git add .
git commit -m "new update- $((RANDOM%=200))"
git push

