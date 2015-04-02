set nocompatible

" Enable per-directory .vimrc files and disable unsafe commands
set exrc
set secure

syntax on

" Colors
set background=dark
colorscheme twilight

set backup
set backupdir=~/.vim/backups
set backupskip=/tmp/*,/private/tmp/*
set directory=/tmp//

" Always show status line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=%03.3b]\ [HEX=%04.4B]\ [POS=%04l,%04v][%3.3p%%]\ [LEN=%L]
set laststatus=2

set mouse=a
set noerrorbells
set title

set bs=2             " allow backspacing over everything in insert mode
set ai               " always set autoindenting on
set viminfo='20,\"50 " read/write a .viminfo file, don't store more
                     " than 50 lines of registers
set spl=pl           " polski słownik
" set thesaurus=$VIM/thesaurus.txt

" Whitespaces
set tabstop=4
set expandtab
set shiftwidth=4
set noeol

" Search options
set nowrapscan
set ignorecase
set hlsearch
set incsearch

set fileencodings=ucs-bom,utf-8,latin2,cp1250
set encoding=utf-8 nobomb
set fileencoding=""

set number

set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" :set list listchars=tab:>-,trail:·,eol:

if has("autocmd")
    filetype on

    autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
    autocmd BufNewFile,BufRead *.md setlocal filetype=markdown

    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
    autocmd FileType php set omnifunc=phpcomplete#CompletePHP
    autocmd FileType c set omnifunc=ccomplete#Complete
endif

set formatoptions+=ro
