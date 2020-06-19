let mapleader = ','
let g:python3_host_prog = '/opt/conda/bin/python'

" Capture mouse scroll
" set mouse=a

" Display hidden characters
set list
set listchars=tab:▸\ ,eol:¬

" set cursorline

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Write on buffer change
set autoread
set autowrite

" Move between virtual lines when wrapped instead of real lines
nnoremap j gj
nnoremap k gk

" tab settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab

set autoindent " always set autoindenting on

set undofile   " undo function after reopening
set undodir=/tmp

" Handle long lines correctly
" set wrap
set textwidth=110
set colorcolumn=110,80

" See help
set formatoptions=qrnj1

" quickly cancel search hilighting
nnoremap <leader><leader> :noh<cr>

" Searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase

" print time
" nnoremap tt "=strftime("%F %T%z")<CR>p



nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>> :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>< :exe "vertical resize " . (winwidth(0) * 2/3)<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
call plug#begin(stdpath('data') . '/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
nnoremap <leader>a :NERDTreeToggle<cr>

" Move to and from Tmux panes
Plug 'christoomey/vim-tmux-navigator'

" Syntax highlighting for python
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" Colors
Plug 'tomasr/molokai'
let g:molokai_original = 1

" Nice statusbar
Plug 'bling/vim-airline'

" Auto close parens, braces, etc
Plug 'jiangmiao/auto-pairs'

" Commenting lines
Plug 'preservim/nerdcommenter'
let g:NERDSpaceDelims=1                     " Add spaces after comment delimiters by default
let g:AutoPairsMultilineClose=0             " Don't be too smart across lines
" let g:AutoPairsMapSpace=0                 " Insert space on both ends

" Highlight trailing whitespace
Plug 'ntpeters/vim-better-whitespace'
" Strip all trailing whitespace
nnoremap <leader>f :StripWhitespace<cr>

" Show git stuff in gutter
Plug 'airblade/vim-gitgutter'

" Update &runtimepath and initialize plugin system.
" Automatically executes `filetype plugin indent` on and `syntax enable`.
call plug#end()
colo molokai
