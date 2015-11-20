#!/bin/bash
 xrandr | grep -i " connected.*+0+0" | awk -F'[  +]+' '/connected/{print $4}'
