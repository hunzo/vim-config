set nocompatible

syntax on
"enable syntax

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" colorscheme monokai
set visualbell

" enable line Number
set number

"show hiden charactor
" set list

" turn relative line numbers on
set rnu
set paste
set cursorline

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'sickill/vim-monokai'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'

call plug#end()

set autoindent
set smartindent

filetype plugin indent on


"disable arrows keys

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" enable AirlineColorscheme bubblegum 
let g:airline_theme='bubblegum'

" Windows move shortcut
map <C-h> :call WinMove('h')<cr>
map <C-j> :call WinMove('j')<cr>
map <C-k> :call WinMove('k')<cr>
map <C-l> :call WinMove('l')<cr>

" Window movement shortcuts
" move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif

endfunction
colorscheme jellybeans
