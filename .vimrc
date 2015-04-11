syntax on
colorscheme koehler

let $PYTHONPATH='/usr/lib/python3.4/site-packages'
set laststatus=2
set t_Co=256
set rtp+=/usr/lib/python3.4/site-packages/powerline/bindings/vim/
set guifont=Inconsolata\ for\ Powerline
set encoding=utf-8 nobomb
set ffs=unix,dos,mac
set number
set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set autoindent
set backspace=indent,eol,start
set shiftround
set ignorecase
set showmode
set noruler
set showcmd
set autoread
set pastetoggle=<F2>
set noshowmode
set hlsearch
set incsearch
set noerrorbells
set nostartofline
set ruler
set scrolloff=3

autocmd BufWritePre * :%s/\s\+$//e
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

if has("autocmd")
    " Enable file type detection
    filetype on
    " Treat .json files as .js
    autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
    " Treat .md files as Markdown
    autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif