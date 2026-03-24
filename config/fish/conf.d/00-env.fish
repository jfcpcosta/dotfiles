set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PAGER less
set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8

set -gx PNPM_HOME $HOME/Library/pnpm
fish_add_path $PNPM_HOME

# FZF base
set -gx FZF_DEFAULT_OPTS "\
    --height=80% \
    --layout=reverse \
    --border=rounded \
    --info=inline \
    --prompt='❯ ' \
    --pointer='▶' \
    --marker='✓' \
    --separator='─' \
    --scrollbar='│' \
    --preview-window='right,60%,border-left' \
    --bind='ctrl-/:change-preview-window(right,60%|down,40%,border-top|hidden)' \
    --bind='ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down' \
    --bind='alt-j:down,alt-k:up'"

# Ctrl-T: ficheiros e diretórios
set -gx FZF_CTRL_T_OPTS "\
    --walker-skip=.git,node_modules,target,vendor,dist,build,.next,.nuxt,.turbo,.cache \
    --preview='if test -d {}; eza --tree --level=2 --icons --color=always {}; else bat --style=full --color=always --line-range=:300 {}; end'"

# Ctrl-R: histórico
set -gx FZF_CTRL_R_OPTS "\
    --style=full \
    --preview='echo {}' \
    --preview-window='down,3,wrap' \
    --bind='ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'"

# Alt-C: mudar de diretório
set -gx FZF_ALT_C_OPTS "\
    --walker-skip=.git,node_modules,target,vendor,dist,build,.next,.nuxt,.turbo,.cache \
    --preview='eza --tree --level=2 --icons --color=always {}'"