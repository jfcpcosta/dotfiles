function cfh
    set -l cmd (history | fzf)
    if test -n "$cmd"
        commandline --replace "$cmd"
    end
end