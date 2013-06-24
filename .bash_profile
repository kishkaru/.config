# tell ls to be colorful
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

#alias
alias ls='ls -FGal'

# set custom bash prompt
export PS1="\[\033[1;34m\]\!\[\033[0m\] \[\033[1;35m\]\u\[\033[0m\]:\[\033[1;35m\]\W\[\033[0m\]$ "
### Added by the Heroku Toolbelt
export PATH=/usr/local/heroku/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/kishan/scala-2.10.1/bin:/Users/kishan/play-2.1.1/:
