export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
export VM_DEVELOP=true

alias ll='ls -alF'
alias l='ls -CF'

# tmux
alias go='cd ~/tmux-profile && ruby ./load-tmux-profile.rb dev'

# navigation
alias dev='cd ~/Quid/repos'
alias qw='dev && cd quid/pmt'
alias sq='dev && cd cookbooks/service_quidweb'
alias sc='dev && cd tools/screener'

# VM
alias vbr='sudo /Library/StartupItems/VirtualBox/VirtualBox restart'

vmdo () { args="$@" ; cd ~/Quid/repos/cookbooks/service_quidweb ; vagrant ssh quidweb -c "sudo /sbin/runuser -l quidweb -c 'cd /quid/apps/quidweb/current ; $args ; ' ; " ; }
vmtest () { cd ~/Quid/repos/cookbooks/service_quidweb ; vagrant ssh quidweb -c "sudo /sbin/runuser -l quidweb -c 'cd /quid/apps/quidweb/current ; bundle exec teaspoon && bundle exec rspec; ' ; " ; }

# bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# git
alias s='git status'
alias d='git diff'
alias gall='git add -A && git commit -m'
alias gdm="git branch --merged | grep -v '\*' | xargs -n 1 git branch -d"

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

# show git brach in prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

PS1="\[\e[0;35m\]\u\[\e[0;0m\] \w\[\e[0;34m\]\$(parse_git_branch)\[\e[0;0m\]: "
