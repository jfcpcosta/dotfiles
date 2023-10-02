#!/bin/bash

# Homebrew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install fish
brew install fish

fish_add_path /opt/homebrew/bin
echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish

# Install Starship
brew install starship

# Vim Plug
mkdir vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Create symlinks
ln -s "$PWD/fish" "$HOME/.config/fish"
ln -s "$PWD/vimrc" "$HOME/.vimrc"
ln -s "$PWD/vim" "$HOME/.vim"
ln -s "$PWD/gitignore_global" "$HOME/.gitignore_global"
ln -s "$PWD/gitconfig" "$HOME/.gitconfig"

# Install Brew Packages
brew install ctop
brew install curl
brew install deno
brew install ffmpeg
brew install fx
brew install grc
brew install httpie
brew install imagemagick
brew install maven
brew install neofetch
brew install netcat
brew install nmap
brew install php
brew install vapor
brew install watchman
brew install wget
brew install yarn
brew install bat
brew install btop
brew install git-flow
brew install mc
brew install rmlint
brew install rsync
brew install symfony-cli/tap/symfony-cli
brew install exa
brew install rg
brew install fzf
brew install zoxide
brew install ncdu
brew install n
brew install pnpm

# tj/n
mkdir $HOME/.n

# Install node
n lts
n latest

# NPM Packages
npm install -g @angular/cli @nestjs/cli @vue/cli commitizen firebase-tools jsonata now

# Activate node corepack and update yarn version
corepack enable
yarn set version berry
