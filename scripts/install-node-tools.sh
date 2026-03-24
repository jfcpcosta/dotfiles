#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PACKAGES_FILE="$ROOT_DIR/packages/npm-global.txt"

if ! command -v fnm >/dev/null 2>&1; then
  echo "fnm não encontrado; a ignorar ferramentas Node"
  exit 0
fi

eval "$(fnm env --use-on-cd)"

if ! command -v node >/dev/null 2>&1; then
  echo "Node não encontrado; a instalar LTS com fnm"
  fnm install --lts
  fnm default lts-latest
  fnm use lts-latest
fi

export PNPM_HOME="${PNPM_HOME:-$HOME/Library/pnpm}"
mkdir -p "$PNPM_HOME"
export PATH="$PNPM_HOME:$PATH"

if ! command -v pnpm >/dev/null 2>&1; then
  echo "pnpm não encontrado"
  exit 1
fi

if ! pnpm bin -g >/dev/null 2>&1; then
  echo "A configurar pnpm global bin directory"
  pnpm setup
fi

if [ ! -f "$PACKAGES_FILE" ]; then
  echo "Sem ficheiro de pacotes globais"
  exit 0
fi

while IFS= read -r package; do
  [ -z "$package" ] && continue
  echo "==> pnpm add -g $package"
  pnpm add -g "$package"
done < "$PACKAGES_FILE"