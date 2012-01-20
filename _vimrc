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
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" toggle nerd tree with CTRL-N
nmap <silent> <c-n> :NERDTreeToggle<CR>
" nnoremap ; :
" set nowrap

" added a nice shortcut for making the screen full width
nmap <silent> <leader>ww :set columns=1000<CR>

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
