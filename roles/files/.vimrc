" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

" set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
match ErrorMsg '\s\+$'
set number
