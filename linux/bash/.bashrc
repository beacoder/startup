# bash configuration file

export PS1='$HOSTNAME $PWD !$ '
export TERM=xterm-color

# path to sbcl
#export SBCL_HOME=/path/to/sbcl

export EDITOR=vim

# load my private configuration
source ~/private/init

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# don't use proxy
unset HTTP_PROXY http_proxy

# execute dynamic command
#eval "echo 'Finished bash initialization !!!'"
