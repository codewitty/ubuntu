syntax on

set guicursor=i:ver25-iCursor

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

set number

set ruler

" disable arrow keys for navigation in Vim
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Compile and run C++ programs without having to exit Vim
" FileType cpp- detects the cpp file directly, (no need of manual regex).
" nmap- used for mapping key while normal mode.
" buffer- for the current buffer (in case of multiple splits).
" <F5>- for mapping the 'F5' key.
" And the command that executes is: :w | !g++ -o %:r % && ./%:r<CR>
" In the above command, % is the file name (with extension),
" while %:r is the file name(without extension),
" <CR> stands for the "Enter" button (Carriage Return)

autocmd FileType cpp nmap <buffer> <F5> :w<bar>!g++ -std=c++11 -o %:r % && ./%:r<CR>
