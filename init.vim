syntax on
colorscheme default
"let g:loaded_clipboard_provider=0

" Highlight trailing spaces
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"Tabs, since i use second monitor, i prefer tab==8 spaces
" set expandtab
" set smarttab
" set tabstop=4
" set softtabstop=4
" set shiftwidth=4

"newrf - file manager
nmap <C-n> :Lexplore<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_altv = 1

"Number string
set number

"Column offset
set foldcolumn=2

"File name
set laststatus=2
"Errors
set noerrorbells
set novisualbell

set mouse=a
set clipboard+=unnamedplus
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Keymap
"set iminsert=0
"set imsearch=0
"highlight lCursor guifg=NONE guibg=Cyan
map <A-q> <ESC>
imap <A-h> <Left>
imap <A-j> <Down>
imap <A-k> <Up>
imap <A-l> <Right>
map <A-t> gt
map <A-T> gT

"clipboard
nnoremap y "+y
nnoremap p "+p
vnoremap y "+y
vnoremap p "+p

"tagbar
nmap <C-b> :TagbarToggle<CR>
"vim-plug manager
"command to install:
"sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs\
"       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
call plug#begin('~/.local/share/nvim/site/autoload/plugged')
    Plug 'jiangmiao/auto-pairs'
    Plug 'preservim/tagbar'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'b3nj5m1n/kommentary'
    Plug 'dr-kino/cscope-maps'
call plug#end()
