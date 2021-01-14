#!/usr/bin/env python

# simple binary clock
# bcd for hours, minutes and seconds
# chart for time past the hour (one light per whole ten minutes)

import sys
import time

import scrollphat


scrollphat.set_brightness(100)
scrollphat.set_pixels(lambda x, y: (x + y) % 9, True)

