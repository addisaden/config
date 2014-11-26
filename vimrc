syntax on
set number
set nowrap
set nocompatible

filetype plugin on
filetype indent on
set autoindent

set ignorecase
set smartcase
set hls
set incsearch

colorscheme delek

set shiftwidth=2
set tabstop=2
set smarttab
set expandtab

set showmatch
set novisualbell
set noerrorbells

set noeb vb t_vb=

set statusline=%f\ :\ %y\ %r\ %M%=[%n:\ %l\ %c]\ %h\ %p%%
set laststatus=2

set backspace=indent,eol,start

"Use of Panthogen to run Vim-fireplace (clojure nrepl)
execute pathogen#infect()

command Heb set invrl
map <C-l> :set invrl<CR>

command Todos :e scp://addisaden@claddis.de/todos.txt
command TodosBackup :! scp addisaden@claddis.de:./todos.txt ~/.backup.todos.claddis.de.txt
command TodosRestore :! scp ~/.backup.todos.claddis.de.txt addisaden@claddis.de:./todos.txt

let @T='^I-- A --yyP^v$hr-$hhxxI yyjpo'
