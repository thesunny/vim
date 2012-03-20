if has('gui_running')
  colorscheme mustang
  syntax on
  set gfn=Consolas:h10:cANSI
  set lines=100 columns=150
endif

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" use pathogen to load plugins from bundle
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" change the leader key from \ to , for easier access
" then make an alias for it
let mapleader=","
nmap \ ,

" Quickly edit/reload the vimrc file
nmap <silent> <leader>v :vsp $HOME\vimfiles\_vimrc<CR>
nmap <silent> <leader>u :so $MYVIMRC<CR>

" toggle nerd tree with CTRL-N or LEADER-N
autocmd vimenter * NERDTree
nmap <silent> <c-t> :NERDTreeToggle<CR>
nmap <silent> <leader>t :NERDTreeToggle<CR>
" nnoremap ; :
" set nowrap

" Add leader-f or leader-r for CTRL-P Finder
" Can't get the CTRL-K thing to work for some reason...
nmap <C-k> :CtrlP<CR>         " find files similar to CTRL-K in Chrome
nmap \ :CtrlP<CR>
nmap <leader>ff :CtrlP<CR>
nmap <leader>fr :CtrlPMRU<CR>
nmap <leader>fb :CtrlPBuffer<CR>

" added a nice shortcut for making the screen full width
nmap <silent> <leader>ww :set columns=1000<CR>
nmap <silent> <leader>wm :set columns=150<CR>
nmap <silent> <leader>ws :set columns=100<CR>


" WINDOW SHORTCUTS

" window split and close shortcuts
nmap <leader>wv <C-w>v
nmap <leader>wh <C-w>s
nmap <leader>wc :q<CR>

" easy window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l


" TAB SHORTCUTS
nmap <leader>tn :tabnew<CR>
nmap <leader>tc :tabclose<CR>
nmap <leader>tl :tabn<CR>
nmap <leader>th :tabp<CR>

" INSERT MODE SHORTCUTS
" allow CTRL-H, CTRL-J, CTRL-K, CTRL-L navigation in insert mode
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>

" easier navigation and editing start
" remap home key so that it starts at the first non-space character of line
map <home> ^
nmap <CR> i<CR>
nmap <space> i
nmap <C-space> i
nmap <C-CR> o<esc>
nmap <C-S-CR> O<esc>
imap <C-space> <esc>
imap jj <esc>
imap jk <esc>
noremap <C-z> u

" resize vertical split with +(=)/- on keyboard
nnoremap <silent> = <C-w>>
nnoremap <silent> - <C-w><
nnoremap <silent> _ <C-w>-
nnoremap <silent> + <C-w>+

" Git shortcuts for fugitive
" gs for git status
" gc for git commit
" gpull for git pull (make it longer so we can't do it by accident)
" gpush for git push (make it longer so we can't do it by accident)

" buffer switching
nmap <C-tab> :bnext<CR>
nmap <C-S-tab> :bprevious<CR>
nmap <leader>1 :b 1<CR>
nmap <leader>2 :b 2<CR>
nmap <leader>3 :b 3<CR>
nmap <leader>4 :b 4<CR>
nmap <leader>5 :b 5<CR>
nmap <leader>6 :b 6<CR>
nmap <leader>7 :b 7<CR>
nmap <leader>8 :b 8<CR>
nmap <leader>9 :b 9<CR>
set hidden                   " hide buffers instead of closing them so I can tab easily

" Quick Save
nmap <leader>s :w<CR>:echo "Saved"<CR>

" Edit Hosts file
nmap <leader>ho :e \Windows\System32\drivers\etc\hosts<CR>

" Trying it out. use jj to exit insert mode.
inoremap jj <ESC>

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
set nowrap          " do not wrap lines

" tab and indent helpers
filetype plugin indent on
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

set relativenumber   " shows line numbers relative to current line


