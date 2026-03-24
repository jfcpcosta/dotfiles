function zi
    set -l dir (zoxide query -i)
    if test -n "$dir"
        cd "$dir"
    end
end