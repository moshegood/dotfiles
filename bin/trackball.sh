#! /bin/bash

if xinput list | grep -q    "Kensington      Kensington Expert Mouse"; then 
    xinput --set-button-map "Kensington      Kensington Expert Mouse" 3 2 8 4 5 6 7 1
#    xinput --set-prop       "Kensington      Kensington Expert Mouse" "Evdev Axis Inversion" 1, 0
#    xinput --set-prop       "Kensington      Kensington Expert Mouse" "Evdev Axes Swap" 1
    xinput --set-prop       "Kensington      Kensington Expert Mouse" "Coordinate Transformation Matrix" 0, -1, 0, 1, 0, 0, 0, 0, 1
fi
if xinput list | grep -q    "Kensington Kensington Slimblade Trackball"; then 
    xinput --set-button-map "Kensington Kensington Slimblade Trackball" 7 3 1 4 5 6 8 2
fi
