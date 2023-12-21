if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Go
PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin

# pyenv
eval "$(pyenv init -)"
export WORKON_HOME=$HOME/.virtualenvs
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

# nvm
source /usr/share/nvm/init-nvm.sh

# Aliases
alias gs="git status"
alias nv="nvim"