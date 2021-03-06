set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'tpope/vim-sensible'        " sane general defaults
NeoBundle 'tpope/vim-repeat'          " makes some plugins repeatable
NeoBundle 'tpope/vim-surround'        " add and change braces and quotes
NeoBundle 'tpope/vim-commentary'      " motion to comment out ranges
NeoBundle 'tpope/vim-fugitive'        " git stuff, mostly :Gblame
NeoBundle 'tpope/vim-unimpaired'

NeoBundle 'idanarye/vim-merginal'     " work with git branches

"NeoBundle 'kien/ctrlp.vim'            " fuzzy find files
NeoBundle 'mileszs/ack.vim' " fuzzy find files with ag
NeoBundle 'junegunn/fzf.vim'

"NeoBundle 'easymotion/vim-easymotion'  "moving around
NeoBundle 'ivanov/vim-ipython' "ipython integration
"NeoBundle 'klen/python-mode'                   " Python mode (docs, refactor, lints...)
"NeoBundle 'scrooloose/syntastic'               " Syntax checking plugin for Vim

"NeoBundle 'scrooloose/nerdtree'  " show and fix trailing space
"NeoBundle 'Xuyuanp/nerdtree-git-plugin'  " show and fix trailing space

NeoBundle 'derekwyatt/vim-scala'      " Syntax Highlighting Scala
" NeoBundle 'christoomey/vim-tmux-navigator'

NeoBundle 'wellle/targets.vim'        " better vim targets
"NeoBundle 'airblade/vim-gitgutter'        " better vim targets 
"NeoBundle 'AndrewRadev/linediff.vim'        " diff two visual blocks

NeoBundle 'jelera/vim-javascript-syntax' "vim javascript colors
"NeoBundle 'nathanaelkane/vim-indent-guides'

"NeoBundle 'henrik/vim-indexed-search'

NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'Lokaltog/powerline'

NeoBundle 'flazz/vim-colorschemes'

call neobundle#end()

NeoBundleCheck

"make vim repload vimrc on saves
autocmd! bufwritepost .vimrc source %

filetype off
filetype plugin indent on
syntax on

"Global options
set nocp vb is ru ai hls ml nospell wmnu sc relativenumber

"localization (English), noime
set langmenu=en_US.UTF-8 enc=utf-8 imi=0 ims=0
lan mes en_US.UTF-8

"Code style enforcement
set tw=0 "width used by autoformatting
set nu
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4

"bigger history
set history=700
set undolevels=700

"no annoying .swpfiles
set nobackup
set nowritebackup
set noswapfile

if exists("+colorcolumn")
    set cc=80,120
    au FileType qf setl cc=
endif

" enable mouse
set mouse=

"colors
set bg=dark
set t_Co=256
"color wombat256mod
silent! colorscheme hybrid
"let g:solarized_termcolors = 256
"let g:solarized_termtrans = 1
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
color tomorrow-night

"rebind leader key
let mapleader=","

set wildmode=list:longest " make TAB behave like in a shell

"toggle pastemode with F2
set pastetoggle=<F2>

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w
" + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" learn propper navigation and stop using arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" clear search highlighting on ,/
nmap <silent> ,/ :nohlsearch<CR>

" forgot sudo while editing a file? no problem type w!!
cmap w!! w !sudo tee % >/dev/null

" easier moving between tabs
"map <Leader>n <esc>:tabprevious<CR>
"map <Leader>m <esc>:tabnext<CR>

" map sort function to a key
"vnoremap <Leader>s :sort<CR>


" ============================================================================
" Python IDE Setup
" ============================================================================


" Settings for vim-powerline
" " cd ~/.vim/bundle
" " git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2

set wildignore+=*/target/*


"silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeToggle<CR>
"silent! map <F4> :NERDTreeFind<CR>
"let g:NERDTreeToggle="<F3>"
"let g:NERDTreeMapActivateNode="<F4>"
"let g:NERDTreeMapPreview="<F5>"

"let g:pymode_python = 'python3'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nmap <Leader>; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

nmap <M-k>    :Ack! "\b<cword>\b" <CR>

set splitbelow
set splitright

set cm=blowfish2

set clipboard=unnamed

" Make ACK.vim use ag instead of ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
" Make fzf plugin find fzf installed by homebrew
set rtp+=/usr/local/opt/fzf
