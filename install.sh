#!/bin/bash

# xcode command line tools
xcode-select --install
sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /

# Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install Brewfile

# install ruby 2.7.0
rbenv install 2.7.0

# Rails
gem install rails
gem install solargraph
solargraph download-core

#JavaScript
## NVM
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

# python
## poetry
curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
## pipx
pip install pipx

# TMUX package manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


set -Ux fish_user_paths "/usr/local/opt/openssl@1.1/bin" $fish_user_paths
set -Ux fish_user_paths "/usr/local/opt/libxml2/bin" $fish_user_paths
set -Ux fish_user_paths "/usr/local/opt/ncurses/bin" $fish_user_paths
set -Ux fish_user_paths "$HOME/.poetry/bin" $fish_user_paths

ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore ~/.gitignore
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.tmux.conf.local ~/.tmux.conf.local
ln -s ~/dotfiles/nvim/ftplugin ~/.config/nvim/
ln -s ~/dotfiles/nvim/ftdetect ~/.config/nvim/
ln -s ~/dotfiles/alacritty/.alacritty.yml  ~/.config/alacritty
ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
