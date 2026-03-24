#!/usr/bin/env bash
set -euo pipefail

PLUG_PATH="${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim"

if [ -f "$PLUG_PATH" ]; then
  echo "vim-plug já instalado"
  exit 0
fi

echo "A instalar vim-plug..."
curl -fLo "$PLUG_PATH" --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "✅ vim-plug instalado em $PLUG_PATH"

if command -v nvim >/dev/null 2>&1; then
  nvim --headless +PlugInstall +qall || true
fi