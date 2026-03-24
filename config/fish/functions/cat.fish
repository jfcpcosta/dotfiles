function cat
    set -l theme (defaults read -globalDomain AppleInterfaceStyle >/dev/null 2>&1; and echo default; or echo GitHub)
    command bat --theme="$theme" $argv
end