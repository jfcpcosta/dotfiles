function cdf
    set -l dir (fd . --type d --hidden --exclude .git --exclude node_modules --exclude dist --exclude build --exclude .next --exclude .nuxt --exclude .turbo --exclude .cache | fzf --prompt="Dirs ❯ " --preview='eza --tree --level=2 --icons --color=always {}')
    if test -n "$dir"
        cd "$dir"
    end
end