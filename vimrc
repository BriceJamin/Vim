" Vi c'est trop vieux et j'aime pas
set nocompatible
runtime! config/**/*.vim

" To resolve copy paste error in debian terminal
"  after upgrade to vim 8
"  Ref. : https://unix.stackexchange.com/a/400717
set t_BE=

" Initialisation de pathogen
call pathogen#infect()
call pathogen#helptags()

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Relative line numbers
set relativenumber

" Onglets (Tabs)
" Permet to use tabfind
"  and search in all subdirectory
set path=.,,**

" Cursor line highlight
set cursorline
