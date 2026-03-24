#!/usr/bin/env bash
set -euo pipefail

echo "==> Aplicar defaults macOS"

defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock show-recents -bool false
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

killall Finder || true
killall Dock || true

echo "✅ Defaults aplicados"