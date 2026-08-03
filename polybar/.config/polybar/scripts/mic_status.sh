#!/bin/bash

SOURCE="alsa_input.pci-0000_09_00.4.analog-stereo"
MIC_STATUS=$(pactl get-source-mute $SOURCE)

if [[ $MIC_STATUS = "Mute: yes" ]]; then
  echo "OFF"
else
  echo "ON"
fi
