#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [ "$#" -eq 0 ]; then
  PROFILES=("base" "dev")
else
  PROFILES=("$@")
fi

echo "==> Bootstrap iniciado"
echo "==> Perfis: ${PROFILES[*]}"

if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if command -v fnm >/dev/null 2>&1; then
  eval "$(fnm env --use-on-cd)"
fi

"$ROOT_DIR/scripts/install-homebrew.sh"
"$ROOT_DIR/scripts/install-packages.sh" "${PROFILES[@]}"
"$ROOT_DIR/scripts/install-fish.sh"
"$ROOT_DIR/scripts/link.sh"
"$ROOT_DIR/scripts/install-node-tools.sh"
"$ROOT_DIR/scripts/install-vim-plug.sh"
"$ROOT_DIR/scripts/doctor.sh"

echo "✅ Bootstrap concluído"