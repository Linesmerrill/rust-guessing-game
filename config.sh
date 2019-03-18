#!/bin/bash

LOOP_LIMIT=$((RANDOM%=100))

for i in {$LOOP_LIMIT..150}; do
  echo $i >> config.txt
  git add .
  git commit -m "new update-$i"
  git push
done

