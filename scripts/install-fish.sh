#!/usr/bin/env bash
set -euo pipefail

FISH_BIN="$(command -v fish || true)"

if [ -z "$FISH_BIN" ]; then
  echo "fish não encontrado"
  exit 1
fi

if ! grep -q "$FISH_BIN" /etc/shells; then
  echo "A adicionar fish a /etc/shells"
  echo "$FISH_BIN" | sudo tee -a /etc/shells >/dev/null
fi

CURRENT_SHELL="${SHELL:-}"
if [ "$CURRENT_SHELL" != "$FISH_BIN" ]; then
  echo "A definir fish como shell por omissão"
  chsh -s "$FISH_BIN"
else
  echo "fish já é a shell por omissão"
fi