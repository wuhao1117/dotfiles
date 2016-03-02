export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
export VM_DEVELOP=true
export LESS=-RFX
export ENV=local

alias ll='ls -alF'
alias l='ls -CF'

alias tm='cd ~/tmux-profile && ruby ./load-tmux-profile.rb dev'
alias dev='cd ~/Quid/repos'

# VM
alias vbr='sudo /Library/StartupItems/VirtualBox/VirtualBox restart'

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# git
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias gall='git add -A && git commit -m'
alias gdm="git branch --merged | grep -v '\*' | xargs -n 1 git branch -d"

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

PS1="\[\e[0;35m\]\u\[\e[0;0m\] \w\[\e[0;34m\]\$(parse_git_branch)\[\e[0;0m\]: "
