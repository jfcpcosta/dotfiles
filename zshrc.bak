export DEFAULT_USER="fcosta"
export ZSH=/Users/$DEFAULT_USER/.oh-my-zsh
export DOTFILES=$HOME/.dotfiles

BASE16_SCRIPT="base16-chalk"
BASE16_SHELL="$DOTFILES/zsh/base16-shell/scripts/$BASE16_SCRIPT.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

#ZSH_THEME="pure"
ZSH_THEME="refined"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git symfony2 systemadmin osx adb battery bower brew colorize composer cp extract httpie sublime vagrant vi-mode xcode)

source $DOTFILES/zsh/path
source $DOTFILES/zsh/alias
source $DOTFILES/zsh/colors
source $DOTFILES/zsh/grc
source $DOTFILES/zsh/functions

source $DOTFILES/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# FOR PURE PROMPT (https://github.com/sindresorhus/pure) ----------------------
fpath=( "$DOTFILES/zsh/zfunctions" $fpath )

autoload -U promptinit && promptinit
prompt pure

autoload -U colors && colors

# VIM MODE (http://dougblack.io/words/zsh-vi-mode.html) -----------------------
bindkey -v
bindkey '^?' backward-delete-char

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg[yellow]%}[% NORMAL]% %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

###-tns-completion-start-###
if [ -f /Users/fcosta/.tnsrc ]; then 
    source /Users/fcosta/.tnsrc 
fi
###-tns-completion-end-###
