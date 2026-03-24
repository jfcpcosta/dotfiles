function cproj
    set -l dir (fd . ~/code ~/work ~/Developer --type d --max-depth 3 2>/dev/null | fzf --prompt="Projetos ❯ " --preview='eza --tree --level=2 --icons --color=always {}')
    if test -n "$dir"
        cd "$dir"
    end
end