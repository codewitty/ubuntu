syntax on

set guicursor=i:ver25-iCursor

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

set number
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
"set expandtab   " always uses spaces instead of tabs
set colorcolumn=82
highlight ColorColumn ctermbg=darkgray
set autoindent
set smartindent
set nobackup  " no backup or swap file, live dangerously
set noswapfile  " swap files give annoying warning
set ls=2        " display file name at bottom
set ruler
set incsearch
set ignorecase
"set cursorline     " Underline cursor line
set scrolloff=8     " Keep 8 lines below and above the cursor

" disable arrow keys for navigation in Vim
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

imap jj <Esc>:w<CR>
imap kj <Esc>:wq<CR>
imap jk <Esc>
let g:user_emmet_leader_key=','    "Remap emmet

"-- AUTOCLOSE --  
"autoclose and position cursor to write text inside  
inoremap ' ''<left>
inoremap ` ``<left>
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
"autoclose with ; and position cursor to write text inside  
inoremap '; '';<left><left>
inoremap `; ``;<left><left>
inoremap "; "";<left><left>
inoremap (; ();<left><left>
inoremap [; [];<left><left>
inoremap {; {};<left><left>
"autoclose with , and position cursor to write text inside
inoremap ', '',<left><left>
inoremap `, ``,<left><left>
inoremap ", "",<left><left>
inoremap (, (),<left><left>
inoremap [, [],<left><left>
inoremap {, {},<left><left>
"autoclose and position cursor after
inoremap '<tab> ''
inoremap `<tab> ``
inoremap "<tab> ""
inoremap (<tab> ()
inoremap [<tab> []
inoremap {<tab> {}
"autoclose with ; and position cursor after
inoremap ';<tab> '';
inoremap `;<tab> ``;
inoremap ";<tab> "";
inoremap (;<tab> ();
inoremap [;<tab> [];
inoremap {;<tab> {};
"autoclose with , and position cursor after
inoremap ',<tab> '',
inoremap `,<tab> ``,
inoremap ",<tab> "",
inoremap (,<tab> (),
inoremap [,<tab> [],
inoremap {,<tab> {},
"autoclose 2 lines below and position cursor in the middle
inoremap '<CR> '<CR>'<ESC>O
inoremap `<CR> `<CR>`<ESC>O
inoremap "<CR> "<CR>"<ESC>O
inoremap (<CR> (<CR>)<ESC>O
inoremap [<CR> [<CR>]<ESC>O
inoremap {<CR> {<CR>}<ESC>O
"autoclose 2 lines below adding ; and position cursor in the middle
inoremap ';<CR> '<CR>';<ESC>O
inoremap `;<CR> `<CR>`;<ESC>O
inoremap ";<CR> "<CR>";<ESC>O
inoremap (;<CR> (<CR>);<ESC>O
inoremap [;<CR> [<CR>];<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
"autoclose 2 lines below adding , and position cursor in the middle
inoremap ',<CR> '<CR>',<ESC>O
inoremap `,<CR> `<CR>`,<ESC>O
inoremap ",<CR> "<CR>",<ESC>O
inoremap (,<CR> (<CR>),<ESC>O
inoremap [,<CR> [<CR>],<ESC>O
inoremap {,<CR> {<CR>},<ESC>O

" Compile and run C++ programs without having to exit Vim
" FileType cpp- detects the cpp file directly, (no need of manual regex).
" nmap- used for mapping key while normal mode.
" buffer- for the current buffer (in case of multiple splits).
" <F5>- for mapping the 'F5' key.
" And the command that executes is: :w | !g++ -std=c++11 -o %:r % && ./%:r<CR>
" In the above command, % is the file name (with extension),
" while %:r is the file name(without extension),
" <CR> stands for the "Enter" button (Carriage Return)
" Press fn + F5 to execute in Vim

autocmd FileType cpp nmap <buffer> <F5> :w<bar>!g++ -std=c++11 -o %:r % && ./%:r<CR>

" Compile and run python programs inside Vim. Just type fn + F7 to execute
autocmd FileType python nmap <buffer> <F7> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>


" Compile and run node js programs inside Vim. Just type fn + F8 to execute
autocmd FileType javascript nmap <buffer> <F8> :w<CR>:exec '!node' shellescape(@%, 1)<CR>

" Remove trailing whitespace - :%s/\s\+$//e
