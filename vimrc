execute pathogen#infect()

syntax on

" display line numbers
set number

" change tab lenght
set  tabstop =3
set  shiftwidth =3
set  softtabstop =3

" indentation scripts
filetype indent plugin on

" mouse activation
set  mouse =a

" find parentheses
set  showmatch

imap  <C-Space> <C-X><C-O>

" nerdtree
autocmd vimenter * NERDTree
