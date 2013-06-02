#!/bin/sh

# 开机启动程序

# Command Line
/bin/bash 

# Emacs
emacs &

# Goagent
python /home/chm/Goagent/proxy.py &

# Chrome
/usr/lib/chromium-browser/chromium-browser www.csdn.net https://plus.google.com planet.emacsen.org blog.binchen.org http://www.youtube.com &

# IRC - used to discuss tech
pidgin &
