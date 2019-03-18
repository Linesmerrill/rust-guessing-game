#!/bin/bash

LOOP_LIMIT=$((RANDOM%=100))

for (( num=$((RANDOM%=100)); num <= 100; num++ ))
do
  echo $i >> config.txt
  git add .
  git commit -m "new update-$i"
  git push
done

