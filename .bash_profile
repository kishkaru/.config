## tell ls to be colorful
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Ignore zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=-1
#export HISTSIZE=-1
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

## alias
alias ls='ls -FGahl'
alias gs='git status'
alias gf='git fetch'
alias gp='git pull origin master'
alias gpm='git push origin master'
alias hr="printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' /"
alias dps='docker ps -a'
alias di='docker image ls -a'
alias k='kubectl'
alias ks='kubectl get pv,pvc,pods,svc,deploy,ds,sts,nodes'

## tell grep to highlight matches
alias grep="grep --color=auto"

## tell bash to use vim when vi called
export EDITOR=vim

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
 
#function parse_git_dirty {
#  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
#}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1]/"
}
# export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '
PS1="\[$Cyan\]\@:"                            # Display time
PS1=$PS1"\[$BBlue\]\w"                         # Display a green pwd
PS1=$PS1"\[$BGreen\]"'$(parse_git_branch)'       # Display a cyan git-branch
PS1=$PS1"\[$BBlue\] $ "
PS1=$PS1"\[$Color_Off\]"                      # Turn off color and end prompt
 
export PS1=$PS1

export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

search_and_kill_processes() {
  p_name=$1
  pids=($(ps aux | grep $p_name | awk '{print $2}'))

  for i in "${pids[@]}"
  do
    :
    echo "Killing pid:"
    echo $i
    kill -9 $i
  done
}

alias search_kill=search_and_kill_processes $1
