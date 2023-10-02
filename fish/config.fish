if status is-interactive
    # Commands to run in interactive sessions can go here
end

set SPACEFISH_PROMPT_ADD_NEWLINE false

starship init fish | source

# Aliases
# alias cat="bat --theme=$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub)"
