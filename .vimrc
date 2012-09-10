" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set nocompatible
syntax on
set number
colorscheme desert
set tabstop=4
set shiftwidth=4
set smartindent
set autoindent

set nowrap  " don't wrap lines
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set copyindent " copy the previous indentation on autoindenting
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch " set show matching parenthesis
set ignorecase " ignore case when searching
set smartcase " ignore case if search pattern is all lowercase,
              "    case-sensitive otherwise

set smarttab " insert tabs on the start of a line according to
             "    shiftwidth, not tabstop

set hlsearch " highlight search terms
set incsearch " show search matches as you type

set hidden

set history=1000 " remember more commands and search history
set undolevels=1000 " use many muchos levels of undo

set nobackup
set noswapfile

set laststatus=2

set guioptions-=T "remove toolbar
set guioptions-=m "remove menu


"sets tabexpand to spaces
set linespace=4
set et
set sw=4
set sts=4

nmap <C-Up> ddkP
nmap <C-Down> ddp

"Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

nmap <silent> ,/ :nohlsearch<CR>

set wildmode=list:longest "For auto completion

:set foldenable

autocmd BufEnter * cd %:p:h "Automatically change current directory to that of the file in the buffer
autocmd BufWritePre * :%s/\s\+$//e "strip trailing whitespace
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et

"Shortcut for NERDTreeToggle
let NERDTreeShowHidden=1
nmap <F2> :NERDTreeMirrorToggle<CR>

"The Vim class outline viewer
nmap <F8> :TagbarToggle<CR>

" Source the vimrc file after saving it. This way, you don't have to reload
" Vim to see the changes.
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
