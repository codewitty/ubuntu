syntax on

set guicursor=i:ver25-iCursor

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

set number

set ruler


map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

autocmd FileType cpp nmap <buffer> <F5> :w<bar>!g++ -std=c++11 -o %:r % && ./%:r<CR>
