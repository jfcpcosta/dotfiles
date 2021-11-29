#!/bin/bash

# Homebrew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Spaceship theme
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

#p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Zinit
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma-continuum/zinit/master/doc/install.sh)"

# Vim Plug
mkdir vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# ColorLS
sudo gem install colorls

# Create symlinks
ln -s "$PWD/zshrc" "$HOME/.zshrc"
ln -s "$PWD/vimrc" "$HOME/.vimrc"
ln -s "$PWD/vim" "$HOME/.vim"
ln -s "$PWD/gitignore_global" "$HOME/.gitignore_global"
ln -s "$PWD/gitconfig" "$HOME/.gitconfig"

# Install Brew Packages
brew install ctop
brew install curl
brew install deno
brew install ffmpeg
brew install fx
brew install grc
brew tap heroku/brew && brew install heroku\n
brew install httpie
brew install imagemagick
brew install maven
brew install neofetch
brew install netcat
brew install nmap
brew install php
brew install php@7.4
brew install sass/sass/sass
brew install vapor
brew install watchman
brew install wget
brew install yarn

# NPM Global Packages
npm install -g @angular/cli @nestjs/cli @vue/cli commitizen firebase-tools jsonata now
