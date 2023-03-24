#!/bin/bash

cat "${1}Main Timeline.edl" | ./edl2yt.py > "${1}TOC.txt"
cat "${1}Main Timeline.edl" | ./edl2todoists.py | sort > "${1}TODO.txt"
