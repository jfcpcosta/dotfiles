#!/bin/bash

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Spaceship Theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Spaceship Plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"

# Create vim plugins folder
mkdir vim

# Create link to configuration files
ln -s "$PWD/zshrc" "$HOME/.zshrc"
ln -s "$PWD/vimrc" "$HOME/.vimrc"
ln -s "$PWD/vim" "$HOME/.vim"
#ln -s "$PWD/tmux.conf" "$HOME/.tmux.conf"
#ln -s "$PWD/teamocil" "$HOME/.teamocil"
ln -s "$PWD/gitignore_global" "$HOME/.gitignore_global"
ln -s "$PWD/gitconfig" "$HOME/.gitconfig"
ln -s "$PWD/my.cnf" "$HOME/.my.cnf"

#gem install teamocil
