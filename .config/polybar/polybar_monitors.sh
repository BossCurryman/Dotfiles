#!/bin/zsh

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload phthalo_green &
  done
else
  polybar --reload phthalo_green &
fi
