#!/bin/bash

xcode-select --install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
