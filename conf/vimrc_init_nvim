" !!! MAS !!! uncomment below to import existing .vimrc 
"
 set runtimepath^=~/.vim runtimepath+=~/.vim/after
 let &packpath = &runtimepath
" source ~/.vimrc
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins (managed by Vundle)
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Chiel92/vim-autoformat'
Plugin 'fatih/vim-go'
Plugin 'dense-analysis/ale'
Plugin 'EdenEast/nightfox.nvim'
" All of your Plugins must be added before the following line
call vundle#end()            " required

syntax on
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Formatting, etc 
"
set number

set nocompatible

colorscheme duskfox 

" Backup file settings
set nobackup       
set nowritebackup  
set noswapfile  

" Tab settings
"set backspace=3
set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
set smarttab        " When on, a <Tab> in front of a line inserts blanks

" Status line
set laststatus=2
set statusline=%f         " Path to the file
set statusline+=\ -\      " Separator
set statusline+=file-type: " Label
set statusline+=%y        " Filetype of the file
set statusline+=%=        " Switch to the right side
set statusline+=colno:\ %-4c\ lineno:\ %-4l\ linecnt:\ %-4L " Line info

" Custom colors
hi StatusLine cterm=bold ctermfg=51 ctermbg=darkgray
hi IncSearch cterm=bold ctermfg=darkred ctermbg=NONE
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=grey ctermbg=darkred

set omnifunc=syntaxcomplete#Complete

" Clipboard
set clipboard+=unnamedplus

" Key remap settings
imap jj <esc>
imap cc <C-X><C-O>
cmap vnt   :NERDTree<CR>

" Commands
command Thtml  :%!tidy -q -i --indent-spaces 4 --show-errors 0
command Txml   :%!tidy -xml -q -i --indent-spaces 4 --show-errors 0

" Templates
au BufNewFile *.xml 0r ~/.vim/templates/skeleton.xml
au BufNewFile *.html 0r ~/.vim/templates/skeleton.html

:set guicursor=
" Workaround some broken plugins which set guicursor indiscriminately.
:autocmd OptionSet guicursor noautocmd set guicursor=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Per-plugin configs
"
source ~/.vim/conf/.vimrc_nerdtree
source ~/.vim/conf/.vimrc_ale
