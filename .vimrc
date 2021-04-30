call pathogen#infect()

filetype plugin indent on
syntax on

set number
set autoindent
set hlsearch
set noswapfile
set ignorecase
set incsearch
set encoding=utf-8
set fileencodings=utf-8
set linebreak
set ruler
set laststatus=2
set noerrorbells
set visualbell
set title
set backspace=indent,eol,start
set bg=dark
set numberwidth=3
set wildmenu
set wildmode=full
set wildmode=list:longest

colorscheme gruvbox

inoremap jk <Esc>
nnoremap /asdf :w<cr>

" clear highlighting, redraw screen
nnoremap <silent> <C-l> :nohl<CR><C-l>

" cursor block
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"



" copy & paste across wsl and windows
set clipboard=unnamed
autocmd TextYankPost * call system('win32yank.exe -i --crlf', @")

function! Paste(mode)
    let @" = system('win32yank.exe -o --lf')
    return a:mode
endfunction
map <expr> p Paste('p')
map <expr> P Paste('P')

command! Vb normal! <C-q>
