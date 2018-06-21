#console colours and magic
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

export PS1="\[$(tput bold)\]\[$(tput setaf 6)\]\u\[$(tput setaf 1)\] @ \[$(tput setaf 2)\]\h\[$(tput setaf 4)\] \w\[$(tput setaf 5)\]\$(parse_git_branch) \[$(tput setaf 1)\]$ \[$(tput sgr0)\]\[$(tput sgr0)\]"


#standard alias'

alias ll='ls -alF'
alias ls='ls -G'
alias cd..='cd ..'
alias f='open -a Finder .'

#docker alias'
alias dockerstop="docker stop \$(docker ps -aq)"
alias dockerrmi="docker rmi \$(docker images -q)"
alias dockerrm="docker rm \$(docker ps -aq)"

#configs
export HISTSIZE=""
git config --global push.default current
