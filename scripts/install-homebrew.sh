#!/usr/bin/env bash
set -euo pipefail

if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if command -v brew >/dev/null 2>&1; then
  echo "Homebrew já instalado"
  exit 0
fi

echo "A instalar Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if ! command -v brew >/dev/null 2>&1; then
  echo "Erro: brew instalado mas não disponível no PATH"
  exit 1
fi