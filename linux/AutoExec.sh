#!/bin/bash

# Goagent
python /home/chm/Goagent/proxy.py &

# Emacs uses Goagent proxy
http_proxy=http://127.0.0.1:8087 emacs &

# Chrome
chrome https://app.yinxiang.com/Home.action http://www.51cto.com https://plus.google.com planet.emacsen.org http://news.163.com &

# IRC - used to discuss tech
# pidgin &

# conky - system monitor
sleep 10 &&
conky -d -c /home/chm/.conkyrc &

# swap Caps_Lock and Control_L
xmodmap ~/.xmodmap

# enable dejavu font in xlsfonts, so that emacs can use it
sudo mkfontscale /usr/share/fonts/dejavu-lgc
sudo mkfontdir /usr/share/fonts/dejavu-lgc
xset fp+ "/usr/share/fonts/dejavu-lgc"
