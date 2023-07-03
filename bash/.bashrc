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
PS1='\w\$ '

# auto-complete 
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi
