syntax on

set noerrorbells "no sounds
set encoding=utf-8
set number "set numbers
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
set cmdheight=2 "height of command line
set noic "dont ignore case in search pattern
set wildmenu "enhanced command line completion
set termguicolors "enables 24-bit rgb
set clipboard=unnamedplus "set clipboard to system

call plug#begin('~/.config/nvim/plugged')
     Plug 'morhetz/gruvbox'
     Plug 'mbbill/undotree'
     Plug 'scrooloose/nerdtree'
     Plug 'sheerun/vim-polyglot'
     Plug 'vim-airline/vim-airline'
     Plug 'tpope/vim-commentary'
     Plug 'tpope/vim-surround'
     Plug 'preservim/tagbar'
     Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
     Plug 'junegunn/fzf.vim'
     Plug 'neoclide/coc.nvim', {'branch': 'release'}
     Plug 'tpope/vim-characterize'
call plug#end()

autocmd FileType rust nnoremap <C-b> :Cbuild <Cr>
autocmd FileType sh nnoremap <C-b> :!bash % <Cr>
autocmd FileType python nnoremap <C-b> :!python3 % <Cr>
autocmd FileType make nnoremap <C-b> :!make
autocmd FileType dts nnoremap <C-T> :w <CR> :!dtc -O dtb -o %:r.dtb %:r.dts <CR>

map <C-s> :set spell!<CR>
nnoremap <esc> :noh<CR>

nnoremap <C-f> :NERDTreeToggle <CR>
nnoremap <C-u> :UndotreeToggle <CR>
nnoremap <F2> :Files! <CR>

""Move selected lines up or down
xnoremap <C-Up> :move '<-2<CR>gv-gv
xnoremap <C-Down> :move '>+1<CR>gv-gv

" Fold comments
nnoremap <C-1> :set foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*'.&commentstring[0] <CR>

filetype plugin on
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:coc_node_path = '/usr/bin/node'

colorscheme gruvbox
set background=dark

let g:LanguageClient_serverCommands = {
    \ 'sh': ['bash-language-server', 'start']
    \ }

" :CocInstall coc-clangd
""languageserver": {
"  "clangd": {
"    "command": "clangd",
"    "rootPatterns": ["compile_flags.txt", "compile_commands.json"],
"    "filetypes": ["c", "cc", "cpp", "c++", "objc", "objcpp"]
"  }
"}
