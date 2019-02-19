#!/bin/bash

xcode-select --install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
