# bash configuration file

# User specific aliases and functions
PATH=/usr/local/python2.7.8/bin/:$HOME/percol/bin/:$PATH:$HOME/bin:.

# load my private configuration
source ~/.private

# use light-weight emacs as default editor
export EDITOR=~/.emq

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# don't use proxy
unset HTTP_PROXY http_proxy
