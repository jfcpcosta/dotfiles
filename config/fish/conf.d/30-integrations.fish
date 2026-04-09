if command -v zoxide >/dev/null
    zoxide init fish | source
end

if command -v fzf >/dev/null
    fzf --fish | source
end

if command -v fnm >/dev/null
    fnm env --use-on-cd | source
end

if command -v direnv >/dev/null
    direnv hook fish | source
end

if command -v grc >/dev/null
    set -l grc_prefix (brew --prefix grc 2>/dev/null)

    if test -n "$grc_prefix"; and test -f "$grc_prefix/.bottle/etc/grc.fish"
        source "$grc_prefix/.bottle/etc/grc.fish"
    end
end