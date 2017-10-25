set nocompatible              " required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'

Plugin 'Konfekt/FastFold'

Plugin 'kopischke/vim-stay'

Plugin 'vim-scripts/indentpython.vim'

Bundle  'Valloric/YouCompleteMe'

Plugin 'morhetz/gruvbox'

Plugin 'scrooloose/syntastic'

Plugin 'nvie/vim-flake8'

Plugin 'scrooloose/nerdtree'

Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-commentary'

Plugin 'christoomey/vim-system-copy'

Plugin 'christoomey/vim-titlecase'

Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

au BufNewFile,BufRead *.*
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

let g:ycm_python_binary_path = 'python3'

" set colorscheme
set background=dark
colorscheme gruvbox

" set highlighting and autocomplete
let python_highlight_all=1
syntax on

execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" hide .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set laststatus=2

set encoding=utf-8
let g:airline_powerline_fonts=1
let g:Powerline_symbols = 'fancy'

" Spell check
setlocal spell spelllang=en_us
set complete+=kspell



" #####################
" #  Setting key maps #
" #####################
"
" Paste mode toggle

set pastetoggle=<F5>

" NerdTree toggle
map <C-l> :NERDTreeToggle<CR>
