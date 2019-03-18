#!/bin/bash
cd ~/workspace/rust-guessing-game/

LOOP_LIMIT=$((RANDOM%=100))

for (( num=$((RANDOM%=100)); num <= 150; num++ ))
do
  echo $num >> config.txt
  git add .
  git commit -m "new update-$num"
  git push
done

