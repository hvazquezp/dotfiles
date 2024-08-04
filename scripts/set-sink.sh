#!/bin/bash

param=$1
if [[ $param == '' ]]; then
  param="HyperX"
fi

totalItems=$(pactl -f json list sinks short | jq length)
items=$(pactl -f json list sinks short )
for i in $(seq $totalItems $END); do
  echo $((i)) $(echo $items | jq '.['$(($i-1))'].name') 
done

read -n 1 -r -p "Select the device number:" option

pactl set-sink-volume $(echo $items | jq '.['$(($option-1))'].index') '10%'
pactl set-default-sink $(echo $items | jq '.['$(($option-1))'].index')

echo -e '\n'
pactl get-default-sink



# [ { "index": 58, "name": "alsa_output.pci-0000_30_00.6.analog-stereo", "driver": "PipeWire", "sample_specification": "s32le 2ch 48000Hz", "state": "SUSPENDED" }, { "index": 65, "name": "alsa_
# output.usb-HP__Inc_HyperX_DuoCast_202011110001-00.analog-stereo", "driver": "PipeWire", "sample_specification": "s24le 2ch 48000Hz", "state": "SUSPENDED" }, { "index": 89, "name": "alsa_outpu
# t.pci-0000_12_00.1.hdmi-stereo", "driver": "PipeWire", "sample_specification": "s32le 2ch 48000Hz", "state": "SUSPENDED" } ]
