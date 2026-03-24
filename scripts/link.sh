#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

link_file() {
  local src="$1"
  local dst="$2"

  mkdir -p "$(dirname "$dst")"

  if [ -L "$dst" ] || [ -e "$dst" ]; then
    rm -rf "$dst"
  fi

  ln -s "$src" "$dst"
  echo "Linked: $dst -> $src"
}

link_file "$ROOT_DIR/config/fish" "$HOME/.config/fish"
link_file "$ROOT_DIR/config/git/gitconfig" "$HOME/.gitconfig"
link_file "$ROOT_DIR/config/git/gitignore_global" "$HOME/.gitignore_global"
link_file "$ROOT_DIR/config/tmux/tmux.conf" "$HOME/.tmux.conf"
link_file "$ROOT_DIR/config/starship/executive.toml" "$HOME/.config/starship.toml"
link_file "$ROOT_DIR/config/nvim" "$HOME/.config/nvim"