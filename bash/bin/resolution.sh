#!/bin/bash
 xrandr | grep -i " connected.*+0+0" | awk -F'[  +]+' '{print $3}'
