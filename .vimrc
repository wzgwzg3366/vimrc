let mapleader=" "
set wrap
set showcmd
set wildmenu
set nu
set shiftwidth=4
set autoindent
set spell
set cursorline
set cursorcolumn
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set autoindent
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

noremap n h
noremap u k
noremap e j
noremap i l
noremap k i
noremap K I
noremap l u
syntax on
map S :w<CR>
map Q :q<CR>
map U 4u
map Y 4j  
map s <nop>
map R :source $MYVIMRC<CR>
map <F12> <Esc>:call SetComment<cr>
set ts=4
set expandtab
set autoindent

map si :set splitright<CR>:vsplit<CR>
map sn :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map se :set splitbelow<CR>:split<CR>

map <LEADER>i <C-w>l
map <LEADER>u <C-w>k
map <LEADER>n <C-w>h
map <LEADER>e <C-w>j

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map tu :tabe<CR>
map tn :-tabnext<CR>
map ti :+tabnext<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

call plug#begin('~/.vim/plugged')
Plug 'connorholyday/vim-snazzy'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'Xuyuanp/nerdtree-git-plugin'

" Error checking
Plug 'w0rp/ale'

" HTML, CSS, JavaScript, PHP, JSON, etc.
"Plug 'elzr/vim-json'
"Plug 'hail2u/vim-css3-syntax'
"Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
"Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
"Plug 'mattn/emmet-vim'

" Auto Complete
"Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

call plug#end()




" ===
" === NERDTree
" ===
map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"

" ===
" === ale
" ===
"let b:ale_linters = ['pylint']
"let b:ale_fixers = ['autopep8', 'yapf']

let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '!'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

"map <C-n> :NERDTreeToggle<CR>

set nocompatible              " be iMproved, required
"filetype off                  " required
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'tpope/vim-fugitive'
" Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'file:///home/gmarik/path/to/plugin'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'posva/vim-vue'
" Plugin 'scrooloose/syntastic'
" call vundle#end()            " required
filetype plugin indent on    " required

let g:syntastic_javascript_checkers = ['eslint']
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

