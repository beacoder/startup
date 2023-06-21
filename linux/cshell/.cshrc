setenv TERM xterm-color

# use light-weight emacs as default editor
setenv EDITOR "emacs -q -nw"

# load my private configuration
source ~/private/init.csh

# don't use proxy
unset HTTP_PROXY http_proxy

# execute dynamic command
# echo "Finished tcsh initialization !!!"

set history = 10000
set histdup = erase
set savehist = (10000 merge)
set histfile = ~/.tcsh_history
