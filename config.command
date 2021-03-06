#!/bin/bash
cd ~/workspace/rust-guessing-game/

LOOP_LIMIT=$((RANDOM%=100))

for (( num=$((RANDOM%=100)); num <= 150; num++ ))
do
  git pull origin master
  git checkout -b feature/update-$num
  echo $num >> config.txt
  git add .
  git commit -m "new update-$num"
  git push -u origin feature/update-$num
  git checkout master
  git merge feature/update-$num
  git push
  git branch -D feature/update-$num
  git push origin :feature/update-$num
done

