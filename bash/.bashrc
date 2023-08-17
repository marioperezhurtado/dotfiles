export PATH="$PATH:/usr/local/bin"

# pnpm
export PNPM_HOME="/home/mario/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
. "$HOME/.cargo/env"

# alias 
alias ll='ls -alF'
alias la='ls -a'
alias l='ls -CF'
alias grep='grep --color=auto'
alias vim='nvim'

# custom prompt 
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$"


# auto-complete 
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi
