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
