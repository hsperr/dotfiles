alias ls="ls -GFlash"

alias gcb="git checkout -b"
alias ga="git add"
alias gs="git status"
alias gap="git add -p"
alias gc="git commit -v"
alias gp="git push"

gf() {
    git pull && git checkout -b "$1" && git push
}

alias shconfig="vim ~/.bashrc"
alias shsource="source ~/.bashrc"

alias txmu="TERM=xterm-256color tmux"

set -o vi

source ~/git-completion.bash

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export HISTCONTROL=ignoreboth:erasedups

# Add git branch if its present to PS1
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='\[\033[01;31m\]$(parse_git_branch) \[\033[01;33m\]\w\[\033[00m\]: '

unset color_prompt force_color_prompt

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
