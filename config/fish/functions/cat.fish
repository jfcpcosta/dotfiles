function cat --description "Smart cat powered by bat"
    set -l theme GitHub

    if defaults read -globalDomain AppleInterfaceStyle >/dev/null 2>&1
        set theme Dracula
    end

    if test (count $argv) -eq 0
        command bat --theme="$theme" --style=plain --paging=never
        return
    end

    for item in $argv
        if test -d "$item"
            command eza --icons --group-directories-first "$item"
            continue
        end

        if test -f "$item"
            set -l lines (wc -l < "$item" | string trim)

            if test "$lines" -gt 300
                command bat --theme="$theme" --style=numbers,changes,header "$item"
            else
                command bat --theme="$theme" --style=numbers,changes --paging=never "$item"
            end

            continue
        end

        echo "cat: $item: No such file or directory" >&2
    end
end