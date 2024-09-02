" Set compatibility to Vim only
set nocompatible

" Enable per-directory .vimrc files and disable unsafe commands
set exrc
set secure

syntax on

" Colors
colorscheme twilight
set background=dark

set backup
set backupdir=~/.vim/backups
set backupskip=/tmp/*,/private/tmp/*
set directory=/tmp//

" STATUS LINE ------------------- {{{
" Always show status line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=%03.3b]\ [HEX=%04.4B]\ [POS=%04l,%04v][%3.3p%%]\ [LEN=%L]
set laststatus=2
" }}}

set wildmenu
set wildmode=longest,full
set wildoptions=pum

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
set relativenumber
set cursorlineopt=number

if &encoding == "utf-8"
    if !exists("$PUTTY_TERM") && $OS isnot# "Windows_NT"
        set listchars=nbsp:\\u2423,tab:››,trail:⋅,precedes:⤆,extends:⤇,eol:↵
        set sbr=➥
    else
        " Putty can't display all nice utf-8 chars
        set listchars=conceal:\\u00b7,tab:>\\u2014,trail:\\u02d1,precedes:\\u2026,extends:\\u2026,eol:\\ub6,nbsp:\\u03c7
        set sbr=\\u2500
    endif
    set fillchars=vert:\\u2502,fold:\\u2500,diff:\\u2014
else
    " Special characters that will be shown, when set list is on
    set listchars=eol:$,trail:-,tab:>-,extends:>,precedes:<,conceal:+
    " Display a `+' for wrapped lines
    set sbr=+
endif

set nolist

filetype on

set formatoptions+=ro

" VIMSCRIPT ------------ {{{
if has("autocmd")
    augroup filetype_vim
        autocmd!
        autocmd FileType vim setlocal foldmethod=marker
    augroup END

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

" }}}
