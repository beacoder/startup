# .bashrc

# User specific aliases and functions
PATH=/usr/local/python2.7.8/bin/:$HOME/percol/bin/:/vobs/devtools/bin:$PATH:$HOME/bin:/usr/atria/bin:/bstd_tools/scm/bm:/opt/rational/clearcase/rhat_x86/bin:~/bin:.:/bstd_tools/contrib/lbin:/opt/slickedit/bin/:.

# tell bash to understand emacs commands
set -o emacs

alias rm='rm -i'
alias mv='mv -i'
alias ll='ls -l'
alias la='ls -la'
alias em='emacs&'
alias cr='clear'

# invoke ediff just like vimdiff
alias ed='ediff'
function ediff() {
    if [ "X${2}" = "X" ]; then
        echo "USAGE: ediff <FILE 1> <FILE 2>"
    else
        # The --eval flag takes lisp code and evaluates it with EMACS
        emacs -q -nw --eval "(progn 
                               (setq ediff-split-window-function 'split-window-horizontally)
                               (setq ediff-diff-options \"-w\")
                               (ediff-files \"$1\" \"$2\"))"
    fi
}

#export PATH
#unset USERNAME

#umask 002
#export HP83000_ROOT=/opt/93000/src
#export CCASE_MAKE_COMPAT=gnu

export MOZILLA_FIVE_HOME=""
export HISTSIZE=100000
export HISTFILESIZE=100000

#/usr/X11R6/bin/xset fp+ ~/fonts/

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# don't use proxy
unset HTTP_PROXY http_proxy
