
" Formatting & color
syntax on
filetype plugin indent on

set nocompatible

colorscheme gentooish

" Backup file settings
set nobackup       
set nowritebackup  
set noswapfile  

" Tab settings
"set backspace=3
set tabstop=3       " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=3    " Number of spaces to use for each step of (auto)indent.
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
set smarttab        " When on, a <Tab> in front of a line inserts blanks


set omnifunc=syntaxcomplete#Complete

" Key remap settings
inoremap jj <esc>

" Commands
command Thtml :%!tidy -q -i --indent-spaces 3 --show-errors 0
command Txml :%!tidy -xml -q -i --indent-spaces 3 --show-errors 0

" Templates
au BufNewFile *.xml 0r ~/.vim/templates/skeleton.xml
au BufNewFile *.html 0r ~/.vim/templates/skeleton.html
