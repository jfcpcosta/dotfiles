#!/usr/bin/env bash
set -euo pipefail

if ! command -v shellcheck >/dev/null 2>&1; then
  echo "shellcheck não encontrado. Instala com: brew install shellcheck"
  exit 1
fi

find . -type f -name "*.sh" -print0 | while IFS= read -r -d '' file; do
  echo "==> shellcheck $file"
  shellcheck "$file"
done

echo "✅ Lint concluído"