#!/usr/bin/env bash

screen=${1:-0}

# wait 10s for the display manager service to start and attach to screen 
sleep 8

sudo /usr/bin/xset -display :$screen s off          # deactivate screen saver
sudo /usr/bin/xset -display :$screen -dpms          # disable DPMS
sudo /usr/bin/xset -display :$screen s noblank      # disable screen blanking
