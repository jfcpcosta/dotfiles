alias rawcat="command cat"
alias rawls="command ls"

alias vim="nvim"
alias v="nvim"

alias c="clear"

alias ls="eza"
alias l="eza --color=always --long --git --icons=always --no-filesize --no-time --no-user --no-permissions"
alias ll="eza -lah --git --icons"
alias lt="eza --tree --level=2 --icons"
alias la="eza -la --icons"

alias g="git"
alias gs="git status --short --branch"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git pull"

alias please="pls"

alias cd="z"

alias ..="cd .."
alias ...="cd ../.."

alias deleteds="find . -name '*.DS_Store' -type f -delete"
alias poweroff="sudo /sbin/shutdown -h now"

alias a="php artisan"
alias k="kubectl"
alias kgp="kubectl get pods"

alias serve="python3 -m http.server 8000"
alias phpserver="php -S localhost:8080"

alias getip="echo 'Internal IP Address:'; ipconfig getifaddr en0; echo ''; echo 'External IP Address:'; curl ifconfig.me; echo ''"