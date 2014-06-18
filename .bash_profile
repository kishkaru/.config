## tell ls to be colorful
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

## alias
alias ls='ls -FGal --color'
alias gs='git status'
alias gp='git pull origin master'
alias gpm='git push origin master'
alias c='ctool'

## tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

## tell bash to use vim when vi called
export EDITOR=vim

## env variables
export PYTHONPATH="/home/kishan/git/cstar/automaton":${PYTHONPATH} 
export CASSANDRA_DIR=~/git/cstar/cassandra
export PATH=$PATH:/home/kishan/git/cstar/automaton/bin
export PATH=$PATH:/home/kishan/git/cstar/automaton/bashcomplete/ctool.bash_complete

## set custom bash prompt
#export PS1="\[\033[1;34m\]\!\[\033[0m\] \[\033[1;35m\]\u\[\033[0m\]:\[\033[1;35m\]\W\[\033[0m\]$ "

## path variables
#export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/kishan/scala-2.10.1/bin:/Users/kishan/play-2.1.1/:/usr/local/heroku/bin:/usr/local/share/npm/bin:
