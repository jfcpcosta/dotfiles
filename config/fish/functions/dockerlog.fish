function dockerlog --description "Show Docker logs with bat"

    if test (count $argv) -eq 0
        echo "usage: dockerlog <container> [docker logs args]" >&2
        return 1
    end

    command docker logs $argv | command bat --language log --paging=never
end