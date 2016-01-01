

" Formatting & color
syntax on
filetype plugin indent on
set number

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
inoremap <C-n> :bnext<CR>
inoremap <C-p> :bprevious<CR>

" Commands
command Thtml :%!tidy -q -i --indent-spaces 3 --show-errors 0
command Txml :%!tidy -xml -q -i --indent-spaces 3 --show-errors 0


" Templates
au BufNewFile *.xml 0r ~/.vim/templates/skeleton.xml
au BufNewFile *.html 0r ~/.vim/templates/skeleton.html

" Uncomment line below to enable plugins below
" execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic - uncomment line below to enable syntax checking
" Need to have Syntastic installed in ~/.vim/bundle directory
" source ~/.vim/conf/.vimrc_syntastic

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NeoComplete - uncomment line below to enable type as you go completion
" Need to have NeoComplete installed in ~/.vim/bundle directory
" source ~/.vim/conf/.vimrc_neocomplete

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Omnisharp - uncomment line below to enable OmniSharp c# VIM IDE
" Need to have Omnisharp installed in ~/.vim/bundle directory
" source ~/.vim/conf/.vimrc_omnisharp
