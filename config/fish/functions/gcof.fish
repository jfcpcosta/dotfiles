function gcof
    set -l branch (git branch --all --format='%(refname:short)' | sort -u | fzf)
    if test -n "$branch"
        git checkout (string replace "remotes/origin/" "" "$branch")
    end
end