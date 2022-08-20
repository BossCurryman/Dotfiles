

#!/bin/zsh

# TODO: Write better program in rust
#  should: get each screen and its size, then search through wallpapers for first image that fits that size

# if type "xrandr"; then

# else
#   polybar --reload phthalo_green &
# fi

screen=0
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  # MONITOR=$m polybar --reload phthalo_green &
  nitrogen --set-auto $1/$m.jpg --head=$screen
  screen=($screen + 1)
done