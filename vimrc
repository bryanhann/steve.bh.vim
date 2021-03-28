set nocompatible

source ~/.config/vim/mysource/amix

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" make the folding nicer
" Plugin 'tmhedberg/SimpylFold'
" Flagging Unnecessary Whitespace
"       au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8
set path+=**
