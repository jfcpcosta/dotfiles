if status is-interactive
    # Commands to run in interactive sessions can go here
end

set SPACEFISH_PROMPT_ADD_NEWLINE false

starship init fish | source

set -x N_PREFIX $HOME/.n
set -x PATH $N_PREFIX/bin:$PATH

set -x PATH ~/Library/Android/sdk/platform-tools:$PATH

# Aliases
alias cat="bat --theme=$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub)"
