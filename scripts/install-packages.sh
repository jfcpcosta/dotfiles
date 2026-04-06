#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BREW_DIR="$ROOT_DIR/brew"

install_bundle() {
  local file="$1"
  if [ -f "$file" ]; then
    echo "==> brew bundle --file=$file"
    brew bundle --file="$file"
  fi
}

install_bundle "$BREW_DIR/Brewfile"

for profile in "$@"; do
  case "$profile" in
    base) ;;
    dev) install_bundle "$BREW_DIR/Brewfile.dev" ;;
    k8s) install_bundle "$BREW_DIR/Brewfile.k8s" ;;
    fun) install_bundle "$BREW_DIR/Brewfile.fun" ;;
    apps) install_bundle "$BREW_DIR/Brewfile.apps" ;;
    *)
      echo "Perfil desconhecido: $profile"
      exit 1
      ;;
  esac
done