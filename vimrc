" Vi c'est trop vieux et j'aime pas
set nocompatible
runtime! config/**/*.vim

" To resolve copy paste error in debian terminal
"  after upgrade to vim 8
"  Ref. : https://unix.stackexchange.com/a/400717
set t_BE=

" Initialisation de pathogen
execute pathogen#infect()
"call pathogen#helptags() "Not usefull, see ref. : https://github.com/tpope/vim-pathogen

" Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Relative line numbers
set relativenumber

" Onglets (Tabs)
" Permet to use tabfind
"  and search in all subdirectory
"  see ref : http://vim.wikia.com/wiki/Project_browsing_using_find
set path=./**

" Add bottom menu
" see ref : http://vim.wikia.com/wiki/Great_wildmode/wildmenu_and_console_mouse
set wildmenu
" and add tab completion in bottom menu
set wildmode=list:longest,full

" Cursor line highlight
set cursorline
