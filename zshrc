export DEFAULT_USER="fcosta"
export ZSH=/Users/$DEFAULT_USER/.oh-my-zsh
export DOTFILES=$HOME/.dotfiles

ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git symfony2 texmate systemadmin osx adb atom battery bower brew brew-cask colorize composer cp extract httpie sublime vagrant vi-mode xcode)

source $DOTFILES/zsh/path
source $DOTFILES/zsh/alias
source $DOTFILES/zsh/colors
source $DOTFILES/zsh/grc

source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
