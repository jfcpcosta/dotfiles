#!/usr/bin/env bash
set -euo pipefail

check_cmd() {
  local cmd="$1"
  if command -v "$cmd" >/dev/null 2>&1; then
    echo "✅ $cmd"
  else
    echo "❌ $cmd"
  fi
}

check_link() {
  local path="$1"
  if [ -L "$path" ] || [ -e "$path" ]; then
    echo "✅ $path"
  else
    echo "❌ $path"
  fi
}

echo "==> Binários"
check_cmd brew
check_cmd fish
check_cmd starship
check_cmd git
check_cmd eza
check_cmd fzf
check_cmd fd
check_cmd rg
check_cmd zoxide
check_cmd fnm
check_cmd pnpm
check_cmd nvim
check_cmd bun

echo
echo "==> Configuração"
check_link "$HOME/.config/fish"
check_link "$HOME/.config/starship.toml"
check_link "$HOME/.gitconfig"
check_link "$HOME/.tmux.conf"
check_link "$HOME/.config/nvim"