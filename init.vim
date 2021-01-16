"-- General Options --
syntax on

set noerrorbells "no sounds
set encoding=utf-8
set number relativenumber "numbered lines with relative to current
set spelllang=en_us "used for spell checking
set autoindent "follow indentation
set smartindent "change indentation smartly...
set tabstop=4 softtabstop=4 "set hard and soft tabs to 4 spaces
set shiftwidth=4 "shift lines by 4 spaces (tab)
set expandtab "turns hard tabs into spaces
set shiftround "when tabbing and untabbing lines, go to the nearest rounded tab (multiple of shiftwidth)
set smartcase "case insensitive when no caps, case sens with caps
set noswapfile " don't use swap files for buffers
set nobackup " don't backup buffers
set undofile "set nvim to use a file for undo
set undodir=~/.config/nvim/undodir "set undo dir as undo file (and backup) 
set hls "highlight search results
set is "highlight current matches when searching
set laststatus=2 "last window will always have a status line
set cmdheight=1 "height of command line
set noic "dont ignore case in search pattern
set wildmenu "enhanced command line completion
set termguicolors "enables 24-bit rgb
set clipboard=unnamedplus "set clipboard to system

"-- Key Remaps --
"Toggle spell checking 
map <C-s> :set spell!<CR>

"Toggle NERDTree
nnoremap <C-f> :NERDTreeToggle <CR>

"Clear search highlighting on <esc>
nnoremap <esc> :noh<CR>

"Toggle Undotree
nnoremap <C-u> :UndotreeToggle <CR>

"idk
autocmd FileType rust nnoremap <C-b> :Cbuild <Cr>

"Toggle fuzzy search
nnoremap <F2> :Files! <CR>

"Move selected lines up or down
xnoremap <C-Up> :move '<-2<CR>gv-gv
xnoremap <C-Down> :move '>+1<CR>gv-gv

" Use <TAB> to navigate COC completion list. Space to complete.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

"-- Plugs --
call plug#begin('~/.config/nvim/plugged')
    Plug 'rust-lang/rust.vim'
    Plug 'morhetz/gruvbox'
    Plug 'mbbill/undotree'
    Plug 'airblade/vim-gitgutter'
    Plug 'scrooloose/nerdtree'
    Plug 'sheerun/vim-polyglot'
    Plug 'vim-airline/vim-airline'
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " :CocInstall coc-rls
    Plug 'tpope/vim-commentary'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
call plug#end()

"-- Plugin Options --
filetype plugin on
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:rustfmt_autosave = 1

"-- Style Options --
colorscheme gruvbox
set background=dark

