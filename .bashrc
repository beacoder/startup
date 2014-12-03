# bash configuration file

# User specific aliases and functions
PATH=/usr/local/python2.7.8/bin/:$HOME/percol/bin/:$PATH:$HOME/bin:.

# tell bash to understand emacs commands
set -o emacs

alias rm='rm -i'
alias mv='mv -i'
alias ll='ls -l'
alias la='ls -la'
alias em='emacs'
alias cr='clear'
alias jb='jobs'

# lightweight emacs without configuration
emq () {
    # keep the ability to execute configuration file
    emacs -q -nw --eval "(global-set-key (kbd \"C-x /\") 
                           (lambda () 
                             (interactive) 
                             (load-file \"~/.emacs.d/init.el\")
                             (desktop-read)))" "$@"
}

# invoke ediff just like vimdiff
alias ed='ediff'

# 'ediff () {}' is more portable than 'function ediff() {}'
ediff () {
    if [ "X${2}" = "X" ]; then
        echo "USAGE: ediff <FILE 1> <FILE 2>"
    else
        # The --eval flag takes lisp code and evaluates it with EMACS
        emq --eval "(progn 
                      (setq ediff-split-window-function 'split-window-horizontally)                             
                      (setq ediff-diff-options \"-w\")
                      (ediff-files \"$1\" \"$2\"))"
    fi
}

#export PATH
#unset USERNAME
#umask 002

export MOZILLA_FIVE_HOME=""
export HISTSIZE=100000
export HISTFILESIZE=100000
export PS1='$HOSTNAME $PWD !$ '

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# don't use proxy
unset HTTP_PROXY http_proxy
