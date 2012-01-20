if has('gui_running')
  colorscheme mustang
  syntax on
  set gfn=Consolas:h10:cANSI
  set lines=100 columns=100
endif

" use pathogen to load plugins from bundle
call pathogen#infect()

" change the leader key from \ to , for easier access
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>v :vsp $HOME\vimfiles\_vimrc<CR>
nmap <silent> <leader>u :so $MYVIMRC<CR>

" toggle nerd tree with CTRL-N or LEADER-N
nmap <silent> <c-t> :NERDTreeToggle<CR>
nmap <silent> <leader>t :NERDTreeToggle<CR>
" nnoremap ; :
" set nowrap

" TODO: Add leader-f or leader-r for CTRL-P Finder

" added a nice shortcut for making the screen full width
nmap <silent> <leader>ww :set columns=1000<CR>

" easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" tab helpers
set tabstop=2
set shiftwidth=4
set expandtab       " converts tabs to space

" indent helpers
set autoindent
set copyindent

" set number
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch

set history=1000     " lots of history
set undolevels=1000  " lots of undo
set visualbell       " don't beep
set noerrorbells     " don't beep

set nobackup         " don't let vim do auto backups
set noswapfile       " don't let vim do swap files
