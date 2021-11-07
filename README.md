# Dotfiles
## Instalation

### Install Homebrew
`$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

### Oh My ZSH
`$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### Spaceship Theme for Oh My ZSH
`$ git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1`
`$ ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"`

### Zinit for Spaceship plugins
`$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma-continuum/zinit/master/doc/install.sh)"`

### Vim Plug
`$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

### Install NVM
`$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash`

### Install ColorLS
`$ sudo gem install colorls`

### Create symbolic link to configuration files
`ln -s "$PWD/zshrc" "$HOME/.zshrc"`
`ln -s "$PWD/vimrc" "$HOME/.vimrc"`
`ln -s "$PWD/vim" "$HOME/.vim"`
`ln -s "$PWD/gitignore_global" "$HOME/.gitignore_global"`
`ln -s "$PWD/gitconfig" "$HOME/.gitconfig"`
