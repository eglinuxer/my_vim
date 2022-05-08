" 设置 leader 键
let mapleader=" "

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set mouse=a
set encoding=utf-8

let &t_ut=''

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" 在不同的模式下，光标的显示样式不一样
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set laststatus=2

set autochdir

" 让下次打开文件的时候光标放在上一次打开的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 开启语法高亮
syntax on

" 设置显示行号
set number

" 显示相对行号
set relativenumber

" 显示当前行下划线
set cursorline

" 让屏幕不能显示全当前行的时候换行显示
set wrap

" 在状态栏显示当前输入的命令
set showcmd

" 在命令行模式按 Tab 键可以补齐命令
set wildmenu

" 高亮搜索
set hlsearch

" 重新进入去除搜索高亮
exec "nohlsearch"

" 一边搜索一边高亮
set incsearch

" 搜索时忽略大小写
set ignorecase
set smartcase

" 重新映射功能键
" noremap i k
" noremap k j
" noremap j h
" noremap e i
" noremap E I

" 自定义快捷键
map S :w<CR>
map s <nop>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitright<CR>:split<CR>
map sk :set nosplitright<CR>:split<CR>

map <LEADER><right> <C-w>l
map <LEADER><left> <C-w>h 
map <LEADER><up> <C-w>k
map <LEADER><down> <C-w>
map <LEADER>i :res +5<CR>
map <LEADER>k :res -5<CR>
map <LEADER>l :vertical resize-5<CR>
map <LEADER>j :vertical resize+5<CR>

map tb :tabe<CR>
map tn :+tabnext<CR>
map tp :-tabnext<CR>

noremap <LEADER><CR> :nohlsearch<CR>

" vim plugin
call plug#begin('~/.vim/plugged')

 Plug 'vim-airline/vim-airline'
 " Plug 'Valloric/YouCompleteMe'
 Plug 'scrooloose/nerdtree'
 Plug 'sickill/vim-monokai'
 Plug 'joshdick/onedark.vim'
 Plug 'romainl/flattened'
 
call plug#end()

" color monokai
color onedark
" colorscheme flattened_dark

nnoremap ff :NERDTreeToggle<CR>
