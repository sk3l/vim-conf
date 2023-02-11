"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE

" ~~ Note ~~ Following packages are assumed to be installed for ALE integration
" C++ => gcc clang
" Python => python-language-server pylint flake8 jedi mypy black isort
" Shell => bashate (pip), cspell (npm), shellcheck (apt)

let g:ale_completion_enabled=1

" Display warning/errors in a separate buffer (default=0)
let g:ale_open_list=1

" Display warning/error buffer as vertical split (default=0)
" let g:ale_list_vertical=0

" Set size of warning/error buffer (default=10)
 let g:ale_list_window_size=5

" Keep left-hand sign gutter open permanently (default=0)
" let g:ale_sign_column_always=0

let g:go_gopls_enabled = 0 " Disable gopls in vim-go

" ALE clangd options can be used to point to alternate Clang install locations
" let g:ale_cpp_clangd_options="--resource-dir=/opt/rh/llvm-toolset-9.0/root/usr/lib64/clang/9.0.1/"
let g:ale_cpp_clangd_options=""
" SQL Format
let g:ale_sql_sqlformat_executable="sqlformat"
let g:ale_sql_sqlformat_options="-r"

" flake8
let g:ale_python_flake8_options = '--max-line-length=100'

set omnifunc=ale#completion#OmniFunc

" pylsp = python-lsp-server package
let g:ale_linters = {
\   'c': ['clang', 'clangcheck', 'clangd'],
\   'cpp': ['clang', 'clangcheck', 'clangd'],
\   'go': ['gopls'],
\   'javascript': ['eslint'],
\   'python': ['flake8', 'pylint', 'pylsp', 'mypy'],
\   'sh' : ['bashate', 'cspell', 'language_server', 'shell', 'shellcheck']
\}

let g:ale_fixers = {
\   'go': ['gofmt', 'goimports', 'golines'],
\   'javascript': ['prettier'],
\   'json': ['fixjson'],
\   'python': ['black', 'isort'],
\   'sql': ['sqlformat'],
\}
let b:ale_fix_on_save = 1

let g:ale_json_fixjson_options = "--indent 4"

" ~!~!~! To enable linting of English prose in markdown, text etc ~!~!~!
"
" 1. Install Java JRE, LanguageTool (https://languagetool.org)
" 2. Add line \"\   'markdown': ['languagetool']," to g:ale_linters above
" 3. Uncomment following lines:
"
" let b:ale_languagetool_executable = 'java'
" let g:ale_languagetool_options="-jar /home/mskelton8/Code/LanguageTool-5.2-SNAPSHOT/languagetool-commandline.jar -l en-US"
