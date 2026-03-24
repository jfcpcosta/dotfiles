function zz
    set -l dir (zoxide query -l | fzf --prompt="Zoxide ❯ " --preview='eza --tree --level=2 --icons --color=always {1}')
    if test -n "$dir"
        cd "$dir"
    end
end