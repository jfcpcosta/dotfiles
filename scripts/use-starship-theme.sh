#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
THEME="${1:-pastel-powerline-clean}"

case "$THEME" in
  minimal|executive|geek|pastel-powerline|pastel-powerline-clean) ;;
  *)
    echo "Tema inválido: $THEME"
    echo "Temas disponíveis: minimal, executive, geek, pastel-powerline, pastel-powerline-clean"
    exit 1
    ;;
esac

mkdir -p "$HOME/.config"
ln -sfn "$ROOT_DIR/config/starship/$THEME.toml" "$HOME/.config/starship.toml"

echo "✅ Tema Starship ativo: $THEME ✨"