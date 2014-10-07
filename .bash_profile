## tell ls to be colorful
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

## alias
alias ls='ls -FGalh --color'
alias gs='git status'
alias gp='git pull origin master'
alias gpt='git pull origin trunk'
alias gpm='git push origin master'
alias c='ctool'
alias arj='ant realclean jar'
alias killcass="pkill -f 'java.*cassandra'" # kills all orphaned CCM nodes that may not have been caught on failed test shutdowns
alias findcass="ps auwx | grep cass" # ensures no Cassandra instances are running
alias hr="printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' /"

## tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

## tell bash to use vim when vi called
export EDITOR=vim

## env variables
export PYTHONPATH="/home/kishan/git/cstar/automaton":${PYTHONPATH}
export PYTHONPATH="/home/kishan/git/cstar/python-driver":${PYTHONPATH}
export AUTOMATON_HOME=~/git/cstar/automaton
#export CASSANDRA_DIR=~/git/cstar/cassandra
export PATH=$PATH:/home/kishan/git/cstar/automaton/bin
export PATH=$PATH:/home/kishan/git/cstar/automaton/bashcomplete/ctool.bash_complete
#export PROTOCOL_VERSION=3
#export CASSANDRA_VERSION=2.1.0-rc5

## set custom bash prompt
#export PS1="\[\033[1;34m\]\!\[\033[0m\] \[\033[1;35m\]\u\[\033[0m\]:\[\033[1;35m\]\W\[\033[0m\]$ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# Reset
Color_Off='\e[0m'       # Text Reset
 
# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White
 
# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White
 
# Underline
UBlack='\e[4;30m'       # Black
URed='\e[4;31m'         # Red
UGreen='\e[4;32m'       # Green
UYellow='\e[4;33m'      # Yellow
UBlue='\e[4;34m'        # Blue
UPurple='\e[4;35m'      # Purple
UCyan='\e[4;36m'        # Cyan
UWhite='\e[4;37m'       # White
 
# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White
 
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
# export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '
PS1="\[$Cyan\]\@:"                            # Display time
PS1=$PS1"\[$BBlue\]\w"                         # Display a green pwd
PS1=$PS1"\[$BGreen\]"'$(parse_git_branch)'       # Display a cyan git-branch
PS1=$PS1"\[$BBlue\] $ "
PS1=$PS1"\[$Color_Off\]"                      # Turn off color and end prompt
 
export PS1=$PS1
