# bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/(\1)/'"

# enable git PS1 prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

# show git brach in prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

PS1="\[\e[0;35m\]\u@laptop\[\e[0;0m\] \w\[\e[0;34m\]\$(parse_git_branch)\[\e[0;0m\]: "
 
# colors and aliases in file browsing
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias go="cd ~/tmux-profile && ruby ./load-tmux-profile.rb dev"
alias dev="cd ~/Quid/repos"
alias quidweb="dev && cd quid/pmt"
alias qw="dev && cd quid/pmt"
alias tools="dev && cd tools"
alias opens="open -a 'Sublime Text'"
alias vbr="sudo /Library/StartupItems/VirtualBox/VirtualBox restart"
alias gdm="git branch --merged | grep -v '\*' | xargs -n 1 git branch -d"
alias gall="git add -A && git commit -m"

vmdo () { args="$@" ; cd ~/Quid/repos/cookbooks/service_quidweb ; vagrant ssh quidweb -c "sudo /sbin/runuser -l quidweb -c 'cd /quid/apps/quidweb/current ; $args ; ' ; " ; }
vmtest () { cd ~/Quid/repos/cookbooks/service_quidweb ; vagrant ssh quidweb -c "sudo /sbin/runuser -l quidweb -c 'cd /quid/apps/quidweb/current ; bundle exec teaspoon && bundle exec rspec; ' ; " ; }

export VM_DEVELOP=true
