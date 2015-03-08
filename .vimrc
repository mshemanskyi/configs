set nocompatible	
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=120	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set errorbells	" Beep or flash screen on errors
set visualbell	" Use visual bell (no beeping)
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set expandtab	" Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
 
"" Advanced
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
let g:molokai_original = 1

filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'szw/vim-tags.git'
Plugin 'bling/vim-airline'
Plugin 'plasticboy/vim-markdown.git'
Plugin 'rstacruz/sparkup'
Plugin 'Raimondi/delimitMate'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'

call vundle#end()       
filetype plugin indent on

" NERDTree
let NERDTreeIgnore=['\.pyc$']
map <C-n> :NERDTreeToggle<CR>

" Tagbar
" JS 
let g:tagbar_type_javascript = {
    \ 'ctagsbin' : '/path/to/jsctags'
	\ }

" CSS
let g:tagbar_type_css = {
			\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
	\ }

" Google Go
let g:tagbar_type_go = {
    \ 'ctagstype': 'go',
    \ 'kinds' : [
        \'p:package',
        \'f:function',
        \'v:variables',
        \'t:type',
        \'c:const'
    \]
	\}

" Airline
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs"

" Other ...

" Syntax highlighting enables.
if has("syntax")
  syntax on
endif

set smartcase	" Do smart case matching
set autowrite	" Automatically save before commands like :next and :make

" size of a hard tabstop
set tabstop=4

" size of an indent
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

set number

set textwidth=80

set t_Co=256
