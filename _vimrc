if has('gui_running')
  colorscheme mustang
  syntax on
  set gfn=Consolas:h10:cANSI
  set lines=100 columns=150
endif

" use pathogen to load plugins from bundle
call pathogen#infect()

" change the leader key from \ to , for easier access
" then make an alias for it
let mapleader=","
nmap \ ,

" Quickly edit/reload the vimrc file
nmap <silent> <leader>v :vsp $HOME\vimfiles\_vimrc<CR>
nmap <silent> <leader>u :so $MYVIMRC<CR>

" toggle nerd tree with CTRL-N or LEADER-N
nmap <silent> <c-t> :NERDTreeToggle<CR>
nmap <silent> <leader>t :NERDTreeToggle<CR>
" nnoremap ; :
" set nowrap

" Add leader-f or leader-r for CTRL-P Finder
" Can't get the CTRL-K thing to work for some reason...
nmap <C-k> :CtrlP<CR>         " find files similar to CTRL-K in Chrome
nmap <leader>ff :CtrlPMRU<CR>
nmap <leader>fb :CtrlPBuffer<CR>

" added a nice shortcut for making the screen full width
nmap <silent> <leader>ww :set columns=1000<CR>
nmap <silent> <leader>wm :set columns=150<CR>
nmap <silent> <leader>ws :set columns=100<CR>

" WINDOW SHORTCUTS

" window split and close shortcuts
nmap <leader>wv <C-w>v
nmap <leader>wh <C-w>s
nmap <leader>wc :q<CR>    " window close shortcut for closing window
nmap <leader>c :q<CR>     " quick shortcut for closing window

" easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" resize vertical split with +(=)/- on keyboard
nnoremap <silent> = <C-w>>
nnoremap <silent> - <C-w><
nnoremap <silent> _ <C-w>-
nnoremap <silent> + <C-w>+

" Git shortcuts for fugitive
nmap <leader>s :w<CR>:echo "Saved"<CR>

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
set nowrap          " do not wrap lines

" tab and indent helpers
set tabstop=2
set shiftwidth=2
set expandtab       " converts tabs to space
set autoindent
set copyindent

" set number
set showmatch
set ignorecase
set smartcase
set smarttab

" search
" set hlsearch         " highlight search results
set incsearch        " show searches matches as you type

set history=1000     " lots of history
set undolevels=1000  " lots of undo
set visualbell       " don't beep
set noerrorbells     " don't beep

set nobackup         " don't let vim do auto backups
set noswapfile       " don't let vim do swap files
