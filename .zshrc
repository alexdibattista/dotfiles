export ZSH="/Users/alexd/.oh-my-zsh"

ZSH_THEME="oxide"
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export CPPFLAGS="-I/usr/local/opt/readline/include"
export EDITOR=nvim
export LDFLAGS="-L/usr/local/opt/readline/lib"
export NVM_DIR="$HOME/.nvm"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
export PATH="$PYENV_ROOT/bin:$PATH"
export PGHOST=localhost
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"
export PYENV_ROOT=/Users/alexd/.pyenv

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

eval "$(rbenv init -)"

fpath+=~/.config/.zsh_functions

source $HOME/.cargo/env

source $HOME/.secrets
