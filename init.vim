""
" vim-plug
""

call plug#begin(stdpath('data') . '/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

""
" FZF
""

map <C-p> :FZF<CR>

""
" NERDTree
""

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeDirArrows = 1
let NERDTreeMinimalUI = 1

""
" vim-go
""

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
let g:go_fmt_command = "goimports"
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1 
let g:go_highlight_types = 1

""
" Settings
""

colorscheme nord
set autowrite
set cursorline
set expandtab
set hlsearch
set incsearch
set mouse=a
set nowrap
set number
set shiftwidth=2
set showmatch
set softtabstop=2
set splitbelow
set splitright
set tabstop=2
syntax on

""
" Bindings
""

let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-Up> <C-W>k
map <C-Down> <C-W>j
map <C-Left> <C-W>h
map <C-Right> <C-W>l

