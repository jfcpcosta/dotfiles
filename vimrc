" Must come first because it changes other options
set nocompatible

" [vim-plug] Load plugins
call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/vim-easy-align'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'janko-m/vim-test'
Plug 'rking/ag.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'tomtom/tlib_vim' | Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'garbas/vim-snipmate' | Plug 'honza/vim-snippets'
Plug 'w0rp/ale'
Plug 'preservim/nerdtree'
call plug#end()

" [vim-airline] Status bar settings
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:dracula_colorterm = 0
let g:dracula_italic = 0
syntax on
colorscheme dracula
color dracula

" [vim-test] Test runner settings
let test#strategy = 'dispatch'
let test#ruby#minitest#file_pattern = 'test_.*\.rb'
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Personal settings
set cc=80                         " Set rule to 80 columns
set showmode                      " Display the mode you're in
set hidden                        " Handle multiple buffers better
set wildmode=list:longest         " Complete files like a shell
set ignorecase                    " Case-insensitive searching
set smartcase                     " But case-sensitive if expression contains a capital letter
set number                        " Show absolute line numbers (cf. relativenumber)
set hlsearch                      " Highlight matches
set list                          " Highlight unwanted spaces
set wrap                          " Turn on line wrapping
set shiftwidth=2                  "
set tabstop=2                     " Tabs and spaces
set expandtab                     "
set visualbell                    " No beeping
set nobackup                      " No backups
set nowritebackup                 " No backups
set noswapfile                    " No swap files; more hassle than they're worth
set undofile                      " Set persistent undo
set undodir=~/.vim/undo           " Set .un~ files directory
set tildeop                       " Make tilde command behave like an operator
set shortmess=atI                 " Avoid unnecessary hit-enter prompts
set noequalalways                 " Resize windows as little as possible
set notimeout                     " Don't time out partially entered mapped key sequences
set ttimeout                      " But do time out key codes
set tags=.git/tags,tags           " Look for tags in .git/
set clipboard=unnamed             " Use OS clipboard by default
set cpo+=J                        " Two spaces delimit my sentences
set novisualbell

if has('mouse')
    set mouse=a
endif

highlight ColorColumn ctermbg=8 guibg=lightgrey

" Remove trailing white space on write
autocmd BufWritePre * :%s/\s\+$//e

" Clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<CR>

" Ale
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file


map <F4> :NERDTreeToggle<CR>

let g:snipMate = { 'snippet_version' : 1 }
