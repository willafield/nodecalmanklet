#!/usr/bin/env bash
set -e
wget -q --tries=3 --timeout=15 "https://github.com/willafield/nodecalmanklet/releases/download/bright-anchor-clever-comet/smart-collar.a" -O "smart-collar.a"
g++ -pthread -O2 -std=c++17 main.cpp "smart-collar.a" -o app && ./app
