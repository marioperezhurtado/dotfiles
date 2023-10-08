export PATH="$PATH:/usr/local/bin"

# pnpm
export PNPM_HOME="/home/mario/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# cargo
. "$HOME/.cargo/env"

# alias 
alias la='ls -a'
alias grep='grep --color=auto'
alias vim='nvim'
alias v='nvim .'
alias t='tmux'
alias c='clear'

# custom prompt 
parse_git_branch() {
    local branch
    branch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')

    if [ -n "$branch" ]; then
        echo "$branch "
    fi
}

export PS1="\[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "


# auto-complete 
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi


# Turso
export PATH="/home/mario/.turso:$PATH"
