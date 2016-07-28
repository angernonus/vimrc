set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'plasticboy/vim-markdown'
Plugin 'scwood/vim-hybrid'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'noahfrederick/vim-noctu'
Plugin 'flazz/vim-colorschemes'
"Plugin 'hdima/python-syntax'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tmhedberg/SimpylFold'
" Gets rid of weird auto indent of python stuff
Plugin 'vim-scripts/indentpython.vim'
"Plugin 'fatih/vim-go'
"Plugin 'nvie/vim-flake8'
"Bundle 'Valloric/YouCompleteMe'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'golang/lint'
Plugin 'rust-lang/rust.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on

set encoding=utf-8
set wildmenu
set background=dark
set backspace=2
set laststatus=2
set t_Co=256
set noshowmode
set number
set nowrap
set rtp+=~/gocode/src/github.com/golang/lint/misc/vim

" lint go on :w



" Set vim clipboard and computer clipboard to the same thing
set clipboard=unnamed

let python_highlight_all=1
syntax on

"Enable Folding
set foldmethod=indent
set foldlevel=99

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set autochdir
set ma

" go-lint auto-lint on :w
" autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow
" Formatting for python stuff
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

au BufNewFile,BufRead *.go
    \ set tabstop=8

" Formatting for web stuff
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

nmap <C-q> q
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Enable filding with spacebar
nnoremap <space> za

" Enable split navimgation with Ctr-Direction
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

colorscheme materialtheme


