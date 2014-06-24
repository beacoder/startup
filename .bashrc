# .bashrc

# User specific aliases and functions
PATH=/vobs/devtools/bin:$PATH:$HOME/bin:/usr/atria/bin:/bstd_tools/scm/bm:/opt/rational/clearcase/rhat_x86/bin:~/bin:.:/bstd_tools/contrib/lbin:/opt/slickedit/bin/:.

alias rm='rm -i'
alias mv='mv -i'
alias ct='cleartool'
alias co='cleartool co -nc'
alias unco='cleartool unco'
alias ci='cleartool ci -nc'
alias lsco='ct lsco -short -avobs -cview'
alias lsvt='ct lsvtree -g'
alias seelog='tailf /var/opt/hp93000/soc/MCDLog'
alias diffpre='cleartool diff -g -pre'
alias make='clearmake'
alias cmakedebug='clearmake CCOPTS="-DDEBUG -O0" debug'
alias DRLtoASCII="/opt/hp93000/soc/segments/formatter/bin/DRLtoASCII -f /opt/hp93000/soc/segments/formatter/EventFormatter/libfilter.so"
alias DRLDump="/opt/hp93000/soc/.service/bin/DRLDump -print -sync -system -trunc"
alias cr="clear"
alias em="emacs&"
alias hsm="cd /opt/hsm/src/"
alias ee="cd /opt/hsm/src/execution_engine/"
alias rs="cd /opt/hsm/src/result_server/"
alias rr="cd /opt/hsm/src/rr/"
alias sw="/opt/hp93000/soc_common/bin/switch_version"
alias sj="ssh atslxws165"
alias fb="ssh atslxws125"
alias fw="/opt/hp93000/soc/pws/bin/hpt"
alias mtp-1="ssh atslxws39"
alias rdesk='rdesktop -g 1600x1175 10.150.48.135&'

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

alias rm='rm -i'
alias mv='mv -i'
alias ct='cleartool'
alias cmake='clearmake'
alias cmakedebug='clearmake CCOPTS="-DDEBUG -O0" debug'
alias dv="/usr/contrib/bin/vslick &"
alias ss="/opt/93000/src/prod_env/bin/HPSmarTest -o&"
alias sson="/opt/93000/src/prod_env/bin/HPSmarTest &"
alias so="/opt/hp93000/soc/prod_env/bin/HPSmarTest -o&"
alias soon="/opt/hp93000/soc/prod_env/bin/HPSmarTest &"
alias ks="/opt/93000/src/prod_env/lbin/kill_smarTest"
alias ko="/opt/hp93000/soc/prod_env/lbin/kill_smarTest"
alias lsview='cleartool lsview|grep crteng2'

#set 93k dev environment
alias set_enviroment=/vobs/zenith/workspace/CMF-tools/set_environment.ksh
#set MTP environment
alias hsmroot='export HSM_ROOT=/opt/hsm/src ENV_ADMIN_VOB=/vobs/admin/hsm/hsm_admin'

setmodel()
{
  if [[ ! -f $1 ]]
  then
  echo "please give the model file name"
  return
  fi

  V93000_MODEL=""

  filePath="${1%%/*}"x

  #is this a absolute path?
  if [ "${1%%/*}x" = "x" ]
  then
    export V93000_MODEL=$1
  else
    currentPath=$(pwd)\/
    export V93000_MODEL=$currentPath$1
  fi

  echo currentModelFile = $V93000_MODEL
}

export NONSHIPMENT_ROOT=/opt/93000/src
export HP83000_ROOT=/opt/hp93000/soc


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
