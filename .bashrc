#tmux
alias tml="tmux list-sessions"
alias tma="tmux attach-session -t"

#source search
alias ss="find . | egrep \"(\.h|.cpp)\" | xargs grep"
alias ssi="find . | egrep \"(\.h|.cpp)\" | xargs grep -i"

#file search
alias fs="find . | grep -i"

alias scl='echo we are $STY; screen -ls'
alias ll='ls -lh -G --color=auto'
alias ls='ls -G --color=auto'

printcsv () { awk -F, '{for (i=1;i<=NF;++i) {if (NR>1) val[i] = $i; else key[i] = $i}} END {for (j=1;j<i;++j) printf("%2d%30s = %s\n", j, key[j], val[j])}' $1 ;}

if [ -f ~/.dxu_aliases ]; then
    . ~/.dxu_aliases
fi

export PATH=$PATH:~/usr/bin:/sbin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/usr/lib


export HISTCONTROL=ignoredups:ignorespace
export HISTSIZE=10000000
export HISTFILESIZE=10000000
export HISTTIMEFORMAT="%F %T "
shopt -s histappend
PROMPT_COMMAND="history -a;history -n"


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
