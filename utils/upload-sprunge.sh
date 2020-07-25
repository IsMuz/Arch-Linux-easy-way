#!/usr/bin/env bash
# Author: Sergey M <tz4678@gmail.com>
# Загружает сниппет на аналог Pastebin'а
set -e
cd `dirname "$0"`
cat ../arch-install.sh | curl -sF 'sprunge=<-' http://sprunge.us
