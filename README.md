# tools_on_tech
My scripts for automating my recording process, mostly for myself but making it public just in case someone want's to dive into my workflow

## Workflow

- Record in OBS, use plugins to keep seperate files for Camera, Laptop and Mixed output
- Copy to Video folder in A-Roll
- Rough cut in Davinci Resolve
- Make a shotlist and get stock or b-roll for that

## OBS
Scripts I setup so I can keep or archive a recording from my streamdeck.
Archive is basically trashcan, but gives me an undo button if I make a mistake

- Archive.sh moves the last recording to archive folder
- Keep.sh finds my latest video folder and moves the files to a-roll

## Resolve
Scripts I use to manage my video folders

- edl2yt.py - Convert Davinci Resolve EDL files to Youtube format, less needed with 18.1 but usefull if I want to do manual uploads
- edl2todoist.py - Turn into a list I can copy and paste into Todoist to have a B-Roll task list for on the go 
- edl.sh - run both python scripts against a main timeline edl export file
- setup.sh - Copy my template folder and rename a couple of files

