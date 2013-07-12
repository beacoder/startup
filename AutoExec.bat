#!/bin/sh

# start up program

# Command Line
# /bin/bash &

# Goagent
python /home/chm/Goagent/proxy.py &

# Emacs uses Goagent proxy
http_proxy=http://127.0.0.1:8087 emacs &

# Chrome
/usr/lib/chromium-browser/chromium-browser www.csdn.net https://plus.google.com planet.emacsen.org blog.binchen.org http://www.youtube.com &

# IRC - used to discuss tech
# pidgin &

# conky - system monitor
sleep 10 &&
conky -d -c /home/chm/.conkyrc &
