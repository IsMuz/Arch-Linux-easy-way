#!/usr/bin/env sh
# Author: Sergey M <tz4678@gmail.com>
# Загружает сниппет на аналог Pastebin'а
o=urls.txt
echo > "$o"
for f in `ls -v ./install/*`
do
  u=$(cat "$f" | curl -sF 'sprunge=<-' http://sprunge.us)
  printf '%s => %s\n' `basename "$f" .sh` "$u" >> "$o"
done
