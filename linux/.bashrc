# bash configuration file

# User specific aliases and functions
PATH=/usr/local/python2.7.8/bin/:$HOME/percol/bin/:$PATH:$HOME/bin:.

export PS1='$HOSTNAME $PWD !$ '
export TERM=xterm-color

# use light-weight emacs as default editor
export EDITOR=~/private/.emq

# load my private configuration
source ~/private/.private

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# don't use proxy
unset HTTP_PROXY http_proxy

# execute dynamic command
eval "echo 'Finished bash initializtion !'"
