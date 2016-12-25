export DEFAULT_USER="fcosta"
export ZSH=/Users/$DEFAULT_USER/.oh-my-zsh
export DOTFILES=$HOME/.dotfiles

# FOR PURE PROMPT (https://github.com/sindresorhus/pure) ----------------------
fpath=( "$DOTFILES/zsh/zfunctions" $fpath )

autoload -U promptinit; promptinit
prompt pure

autoload -U colors && colors

BASE16_SCRIPT="base16-chalk"
BASE16_SHELL="$DOTFILES/zsh/base16-shell/scripts/$BASE16_SCRIPT.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

ZSH_THEME="pure"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git symfony2 texmate systemadmin osx adb atom battery bower brew brew-cask colorize composer cp extract httpie sublime vagrant vi-mode xcode)

source $DOTFILES/zsh/path
source $DOTFILES/zsh/alias
source $DOTFILES/zsh/colors
source $DOTFILES/zsh/grc

source $DOTFILES/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
