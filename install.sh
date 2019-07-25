#!/bin/bash

xcode-select --install
sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore ~/.gitignore
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.tmux.conf.local ~/.tmux.conf.local
ln -s ~/dotfiles/nvim/ftplugin ~/.config/nvim/
ln -s ~/dotfiles/nvim/ftdetect ~/.config/nvim/
ln -s ~/dotfiles/alacritty/.alacritty.yml  ~/.config/alacritty
