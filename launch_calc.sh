#!/bin/bash
set -ex

DISPLAY=:1

Xvfb $DISPLAY -screen 0 1024x600x24 -fbdir /tmp >> /tmp/Xvfb.out 2>&1 &

DISPLAY=$DISPLAY /usr/bin/xcalc 
