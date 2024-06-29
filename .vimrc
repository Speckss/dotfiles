set nocompatible
set nolist

filetype on

syntax on


filetype plugin indent on

set modelines=0

set wrap

set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

set scrolloff=5

set showmode
set showcmd


set matchpairs+=<:>

set number

"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%1,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

set encoding=utf-8

set hlsearch

set incsearch

set ignorecase

set smartcase

set viminfo='100,<9999,s100

let python_highlight_all=1
syntax on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC 
endif


call plug#begin()

"syntax highlighting and autocompletion
Plug 'neoclide/coc.nvim', { 'branch' : 'release' }
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'vim-syntastic/syntastic'
Plug 'leafgarland/typescrit-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'ycm-core/YouCompleteMe'
"filesearch
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

"Editor interface and theming
Plug 'morhetz/gruvbox'
Plug 'vim-aiirline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'yggdroot/indentline'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"debug
Plug 'puremourning/vimspector'
"Plug 'vim-scripts/indentpython.vim'


Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


call plug#end()

"vars
let g:airline_powerline_fonts = 1
let g:coc_global_extensions = [ 'coc-tsserver']
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
colorscheme gruvbox
set bg=dark
