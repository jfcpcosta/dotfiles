# dotfiles

Setup pessoal de workstation para macOS com foco em:

- **fish** como shell principal
- **Starship** como prompt
- **Homebrew** + `Brewfile` para instalação declarativa
- **Neovim** moderno em Lua
- tooling para desenvolvimento geral, JavaScript/TypeScript, PHP, Kubernetes e terminal UX
- scripts modulares para bootstrap, symlinks, validação e manutenção

O objetivo deste repositório é ter uma workstation **reproduzível, limpa, modular e sustentável**.

---

# Filosofia

Este repo não é "um scriptzito de setup".

É uma base de trabalho para:

- provisionar uma máquina nova rapidamente;
- manter configurações pessoais sob controlo;
- separar instalação, configuração e ergonomia;
- reduzir drift entre máquinas;
- evitar um `install.sh` monolítico impossível de manter.

Princípios:

- **configuração modular**
- **instalação declarativa**
- **scripts pequenos**
- **shell previsível**
- **sem magia desnecessária**
- **otimizado para uso interativo real**

---

# Estrutura

```text
dotfiles/
├── README.md
├── Makefile
├── bootstrap/
│   └── install.sh
├── brew/
│   ├── Brewfile
│   ├── Brewfile.dev
│   ├── Brewfile.k8s
│   └── Brewfile.fun
├── config/
│   ├── fish/
│   │   ├── config.fish
│   │   ├── conf.d/
│   │   └── functions/
│   ├── git/
│   ├── nvim/
│   ├── starship/
│   └── tmux/
├── defaults/
│   └── macos.sh
├── packages/
│   └── npm-global.txt
└── scripts/
    ├── doctor.sh
    ├── install-fish.sh
    ├── install-homebrew.sh
    ├── install-node-tools.sh
    ├── install-packages.sh
    ├── link.sh
    ├── lint.sh
    └── use-starship-theme.sh
```

---

# Requisitos

## Sistema operativo

Este setup foi pensado para:
- macOS
- idealmente Apple Silicon

Ferramentas assumidas

O bootstrap trata da instalação de quase tudo, mas assumes que:
- tens acesso administrativo local;
- podes usar sudo;
- tens acesso à internet;
- estás confortável a mudar a shell por omissão para fish.

---

# Instalação

## 1. Clonar o repositório

```bash
git clone <repo-url> ~/.dotfiles
cd ~/.dotfiles
```

## 2. Dar permissões de execução aos scripts

Se necessário:

```bash
chmod +x bootstrap/install.sh
chmod +x scripts/*.sh
chmod +x defaults/*.sh
```

## 3. Correr a instalação

**Exemplo recomendado**

```bash
make install PROFILES="dev k8s" THEME=executive
```

**Exemplo com tema pastel**

```bash
make install PROFILES="dev k8s" THEME=pastel-powerline-clean
```

**Instalação mínima**

```bash
make install PROFILES="base" THEME=minimal
```


---

# Perfis

O setup está organizado por perfis.

## base

Ferramentas essenciais do sistema e do terminal:
- fish
- starship
- git
- tmux
- eza
- fzf
- fd
- ripgrep
- bat
- jq / yq
- zoxide
- delta
- neovim
- direnv
- shellcheck
- e várias ferramentas utilitárias de terminal

## dev

Tooling de desenvolvimento geral:
- fnm
- pnpm
- bun
- deno
- watchman
- ngrok
- openssl
- sqlite
- lazygit
- httpie
- maven
- php
- wp-cli
- tokei
- hyperfine

Nota sobre o Bun

O bun é instalado através do tap oficial:

```bash
tap "oven-sh/bun"
brew "bun"
```

## k8s

Tooling para Kubernetes:
- kubectl
- helm
- k9s
- kubectx
- kind
- minikube

## fun

Ferramentas lúdicas / ASCII / terminal toys:
- cowsay
- sl
- asciiquarium
- fortune
- cmatrix
- pipes-sh
- ninvaders
- figlet
- toilet
- samtay/tui/tetris

---

# Comandos principais

## Instalar tudo

```bash
make install PROFILES="dev k8s" THEME=executive
```

## Recriar symlinks

```bash
make link
```

## Validar setup

```bash
make doctor
```

## Lint aos scripts shell

```bash
make lint
```

## Aplicar defaults do macOS

```bash
make macos
```

## Trocar tema do Starship

```bash
make theme THEME=geek
```

---

# Homebrew / Brewfiles

A instalação de pacotes é feita com brew bundle.

## brew/Brewfile

Pacotes base do terminal, shell e utilitários.

Inclui, entre outros:
- fish
- starship
- git
- tmux
- eza
- fzf
- fd
- ripgrep
- bat
- jq
- yq
- zoxide
- delta
- wget
- curl
- tldr
- tree
- neovim
- mas
- direnv
- gnu-sed
- coreutils
- shellcheck
- yewtube
- mpv
- ntfy
- mprocs
- ctop
- ffmpeg
- fx
- imagemagick
- neofetch
- netcat
- nmap
- btop
- git-flow
- mc
- rmlint
- rsync
- ncdu
- mcfly
- the_silver_searcher
- dust
- procs
- bottom
- bandwhich
- gping

## brew/Brewfile.dev

Pacotes para desenvolvimento geral.

Inclui:
- tap "oven-sh/bun"
- fnm
- pnpm
- yarn
- bun
- deno
- watchman
- ngrok (via cask)
- openssl
- sqlite
- lazygit
- httpie
- maven
- php
- wp-cli
- tokei
- hyperfine

## brew/Brewfile.k8s

Pacotes de Kubernetes.

## brew/Brewfile.fun

Ferramentas lúdicas em terminal.

---

# Shell: fish

## Estrutura

A configuração do fish está organizada em:
- config.fish
- conf.d/*.fish
- functions/*.fish

## Objetivos
- shell interativa rápida
- aliases previsíveis
- integrações separadas por responsabilidade
- funções reutilizáveis
- sem config monolítica

## Integrações principais
- starship
- fzf
- zoxide
- fnm
- direnv

## Convenções
- 00-env.fish → variáveis de ambiente
- 10-path.fish → PATH
- 20-aliases.fish → aliases
- 30-integrations.fish → integrações de ferramentas
- 40-bindings.fish → keybindings

--- 

# Aliases e funções relevantes

## Navegação
- cd → pode estar mapeado para z (zoxide), dependendo da configuração final
- zi → navegação interativa via zoxide
- zz → navegação com zoxide + fzf + preview
- cdf → fuzzy jump para diretórios
- cproj → launcher de projetos
- .. / ... → subir diretórios

## Listagem
- ls → simples
- l → detalhado
- ll → detalhado com hidden files
- lt → tree

## Editor
- vim → alias para nvim
- v → alias rápido para nvim

## Utilitários
- cat → wrapper com bat, com tema adaptado ao modo claro/escuro do macOS
- rawcat → acesso direto ao cat clássico
- getip → mostra IP interno e externo
- serve → servidor HTTP rápido em Python
- phpserver → servidor HTTP rápido em PHP

---

# FZF

O setup inclui configuração de fzf para:
- preview com bat
- preview de diretórios com eza --tree
- exclusão de diretórios pesados como:
- .git
- node_modules
- dist
- build
- .next
- .nuxt
- .turbo
- .cache

Atalhos como Ctrl-T, Ctrl-R e Alt-C são afinados por variáveis de ambiente no fish.

---

# Starship

## Gestão de temas

Os temas vivem em:

`config/starship/`

Exemplos:
- minimal.toml
- executive.toml
- geek.toml
- pastel-powerline.toml
- pastel-powerline-clean.toml

## Trocar tema

```bash
make theme THEME=executive
```

ou

```bash
make theme THEME=pastel-powerline-clean
```

## Ativação

O tema ativo é ligado via symlink para:

`~/.config/starship.toml`


---

# Git

A configuração Git inclui:
- editor por omissão (nvim)
- pager com delta
- gitignore global
- possibilidade de includes por contexto
- base pronta para separar identidade pessoal e trabalho

## Ficheiros relevantes:

```text
config/git/gitconfig
config/git/gitignore_global
config/git/includes/
```

---

# Neovim

## Objetivo

O Neovim foi redesenhado para uma stack mais moderna e mais alinhada com Neovim atual.

## Stack atual
- lazy.nvim
- dracula.nvim
- oil.nvim
- telescope.nvim
- nvim-treesitter
- lualine.nvim
- gitsigns.nvim
- which-key.nvim
- trouble.nvim
- todo-comments.nvim
- mason.nvim
- vim.lsp.config() / vim.lsp.enable()
- blink.cmp
- conform.nvim
- vim-test
- vim-dispatch
- vim-fugitive
- vim-easy-align

## Filosofia
- evitar legado Vimscript desnecessário
- reduzir overlap entre plugins
- aproveitar a API moderna do Neovim 0.11+
- manter a configuração modular em Lua

## Estrutura

```text
config/nvim/
├── init.lua
└── lua/
    ├── config/
    └── plugins/
```

## Plugins principais

**Navegação**
- oil.nvim
- telescope.nvim

**Syntax / parsing**
- nvim-treesitter

**UI**
- lualine.nvim
- which-key.nvim
- trouble.nvim
- todo-comments.nvim

**Git**
- gitsigns.nvim
- vim-fugitive

**LSP / completion**
- mason.nvim
- nvim-lspconfig
- blink.cmp

**Formatting**
- conform.nvim

**Testing**
- vim-test
- vim-dispatch

---

# Sidebar / file explorer no Neovim

O explorer atual é o Oil.

## Atalhos
- Space + e → abrir explorer
- Space + o → abrir explorer em split lateral

## Dentro do Oil
- l ou Enter → abrir ficheiro
- v → abrir em split vertical
- s → abrir em split horizontal
- h → subir diretório
- q → fechar painel

---

# LSP no Neovim

A configuração usa a API moderna do Neovim:
- vim.lsp.config(...)
- vim.lsp.enable(...)

Não usa o modelo antigo `require("lspconfig").setup(...)`.

Servidores previstos
- lua_ls
- ts_ls
- jsonls
- yamlls
- bashls

## Ferramentas a instalar no Mason

Ao abrir o Neovim, convém confirmar em :Mason a instalação de:
- lua-language-server
- typescript-language-server
- json-lsp
- yaml-language-server
- bash-language-server
- prettier
- stylua

---

# Tmux

## Tmux com configuração simples e pragmática:
- mouse ativo
- histórico alargado
- prefix customizável
- reload rápido da config

**Ficheiro:**

`config/tmux/tmux.conf`


---

# npm / Node tooling global

O repo pode incluir um ficheiro:

`packages/npm-global.txt`

com ferramentas globais como:
- @angular/cli
- @nestjs/cli
- firebase-tools
- @google/gemini-cli
- commitizen
- @github/copilot
- @qodo/gen

A instalação é tratada por `scripts/install-node-tools.sh`.

## Nota importante

O bootstrap garante:
- instalação de `fnm`
- instalação de Node LTS
- configuração de `PNPM_HOME`
- setup do pnpm antes de instalar ferramentas globais

---

# macOS defaults

As preferências de macOS vivem separadas em:

`defaults/macos.sh`

Exemplos:
- Finder mostrar ficheiros ocultos
- path bar e status bar no Finder
- auto-hide do Dock
- key repeat tuning

## Aplicação:

```bash
make macos
```

---

# Doctor / troubleshooting

Validar instalação

```bash
make doctor
```


Valida:
- binários principais
- existência de symlinks
- componentes fundamentais do setup

## Problemas frequentes

### Script não executável

```bash
chmod +x bootstrap/install.sh scripts/*.sh defaults/*.sh
```

### brew não encontrado após instalação

```bash
eval "$(/opt/homebrew/bin/brew shellenv)"
```

### pnpm sem global bin dir

Garantir `PNPM_HOME` e correr pnpm setup.

### bun não encontrado no Homebrew

Confirmar:

```bash
tap "oven-sh/bun"
brew "bun"
```

### vim-plug / configs antigas do Neovim

O setup atual usa lazy.nvim, não vim-plug.

luarocks warnings no lazy.nvim

O suporte a rocks está desligado quando não há plugins que dependam disso.

---

# Personalização local

Nem tudo deve viver no core do repo.

Coisas altamente pessoais, como aliases para paths locais, podem viver em ficheiros separados, por exemplo:

`config/fish/conf.d/90-local-paths.fish`

ou num ficheiro não versionado como:

`~/.config/fish/local.fish`

Se a configuração principal o carregar.

Isto evita contaminar o repo com detalhes demasiado específicos de uma única máquina.

---

# Recomendações de uso

Máquina nova
1.	clonar repo
2.	correr make install PROFILES="dev k8s" THEME=executive
3.	abrir uma nova shell
4.	validar com make doctor
5.	abrir Neovim e correr:
    - :Lazy sync
    - :Mason
    - :TSUpdate
    - :checkhealth

## Atualizar pacotes

```bash
brew update
brew upgrade
brew bundle --file=brew/Brewfile
brew bundle --file=brew/Brewfile.dev
brew bundle --file=brew/Brewfile.k8s
brew bundle --file=brew/Brewfile.fun
```

Trocar tema

```bash
make theme THEME=geek
```

---

# Roadmap

Melhorias futuras possíveis:
- separar melhor perfis por contexto
- criar local/ não versionado para configurações específicas de máquina
- endurecer doctor.sh
- adicionar CI para shellcheck
- rever periodicamente o Brewfile.dev para evitar excesso de runtimes/package managers
- decidir se yarn continua necessário face a pnpm + bun

---

# Licença

Uso pessoal. Adapta à tua realidade.
