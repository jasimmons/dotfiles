# aliases
alias ll='ls -lash'
alias cat='ccat'
alias ..='cd ..'
alias v='vim'
alias g='git'

# env
export GOPATH=$HOME/workspace/go
export GOROOT=/usr/local/go
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH

# jump
which jump >/dev/null && eval "$(jump shell --bind=j)"
