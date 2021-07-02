syntax on
colorscheme default
"let g:loaded_clipboard_provider=0

"set termguicolors
"Tabs
set expandtab 
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"Number string
set number

"Column otstup :)
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

if empty(glob("~/.local/share/nvim/site/autoload/plug.nvim"))
    execute '!curl -fLo ~/.local/share/nvim/site/autoload/plug.nvim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.local/share/nvim/site/autoload/plugged')
    "Скобки
	Plug 'tpope/vim-surround'
    Plug 'jiangmiao/auto-pairs'
    Plug 'vim-airline/vim-airline'
    "Поиск файлов
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'scrooloose/nerdcommenter'
    Plug 'preservim/nerdtree'
    "Проверка синтаксиса
   " Plug 'scrooloose/syntastic'
    "Автодополнение
    Plug 'neovim/nvim-lspconfig'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    "let g:deoplete#enable_at_startup = 1
    "Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'} 
call plug#end()

"syntastic opts
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:deoplete#lsp#handler_enabled = 1
"let g:syntastic_asm_checkers = ['nasm']
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
