" Vi c'est trop vieux et j'aime pas
set nocompatible
runtime! config/**/*.vim

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
