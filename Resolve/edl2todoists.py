#!/usr/bin/python3
#
# Super small python script to convert Davinci Resolve Marker EDL exports to Youtube Table of contents
#
# Usage:
#   * Right click a timeline in the Media page
#   * Pick Timeline -> Export -> Timeline Markers to EDL...
#   * Save file
#   * cat <file> | python3 edl2yt.py
#   * copy and paste result in your description
#
# Source: https://gitlab.com/-/snippets/2090233
import re, sys

# This is limited to videos of less then an hour, that should cover 99% of youtube
timestamp = re.compile("^\d\d\d  001.*C        01:(\d\d:\d\d):\d\d")

# Capture all Markers
#marker = re.compile("^ \|C:.* \|M:(.*) \|D:1")

# Capture just the Blue Markers, because I use those for Tasks"
marker = re.compile("^ \|C:ResolveColorBlue \|M:(.*) \|D:1")

timestr = ""

for name in (line.rstrip("\r\n") for line in sys.stdin):
    t = timestamp.search(name)
    if t:
        timestr = t.group(1)

    m = marker.search(name)
    if m:
        print("- " + m.group(1) + " (" + timestr + ")")

