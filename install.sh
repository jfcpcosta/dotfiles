#!/bin/bash

ln -s "$PWD/zshrc" "$HOME/.zshrc"
ln -s "$PWD/vimrc" "$HOME/.vimrc"
ln -s "$PWD/vim" "$HOME/.vim"
ln -s "$PWD/tmux.conf" "$HOME/.tmux.conf"
ln -s "$PWD/teamocil" "$HOME/.teamocil"
ln -s "$PWD/gitignore_global" "$HOME/.gitignore_global"
ln -s "$PWD/gitconfig" "$HOME/.gitconfig"
ln -s "$PWD/my.cnf" "$HOME/.my.cnf"

gem install teamocil
