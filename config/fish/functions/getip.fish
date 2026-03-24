function getip
    set -l interface (route get default 2>/dev/null | awk '/interface: / {print $2}' | head -n 1)
    set -l internal_ip ""

    if test -n "$interface"
        set internal_ip (ipconfig getifaddr $interface 2>/dev/null)
    end

    echo "Internal IP Address:"
    if test -n "$internal_ip"
        echo $internal_ip
    else
        echo "Não foi possível determinar"
    end

    echo ""
    echo "External IP Address:"
    curl -fsSL ifconfig.me
    echo ""
end