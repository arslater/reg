#!/bin/bash

## Part 1: Cloase all open windows to refresh the page 
## runs every 5 minutes

##
##

## close all open windows
#xdotool search "" windowkill %@

## Reopen firefox & log into MyUalbany
firefox https://www.albany.edu/main/myualbany-student.shtml
sleep 1
xdotool type "USERNAME"
xdotool key Tab
sleep 1
xdotool type "PASSWORD"
sleep 1
xdotool key Return

