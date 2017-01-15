set runtimepath+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')

Plug 'AndrewRadev/splitjoin.vim'
Plug 'Raimondi/delimitMate'
Plug 'Spaceghost/vim-matchit'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
Plug 'airblade/vim-gitgutter'

call plug#end()

set noshowmode        " powerline shows the mode"
set hlsearch          " highlight searches
set ignorecase        " case insensitive searching
set smartcase         " overrides ignorecase when pattern contains caps
set clipboard=unnamed " use OS clipboard
set noswapfile        " don't need em, don't want em
" set laststatus=2      " always display the status line
set backspace=2

" remap escape
:imap hh <Esc>

" show line numbers
set number

syntax on
filetype plugin on
filetype indent on
colorscheme github

" tabs to spaces
set tabstop=2
set shiftwidth=2
set expandtab

" highlight extra whitespace
" :highlight ExtraWhitespace ctermbg=red guibg=red
" :match ExtraWhitespace /\s\+$/

set textwidth=80

nnoremap <Left> :echoe "use h"<CR>
nnoremap <Right> :echoe "use l"<CR>
nnoremap <Up> :echoe "use k"<CR>
nnoremap <Down> :echoe "use j"<CR>
