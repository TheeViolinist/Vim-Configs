syntax on
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Utilização com github
Plugin 'tpope/vim-fugitive'
"Cores""
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/syntastic'

Plugin 'altercation/vim-colors-solarized'

"abre  e fecha parentes e colchetes""
Plugin 'jiangmiao/auto-pairs'

"Mostra os status do vim""
Plugin 'bling/vim-airline'

"Airlenes themes"
Plugin 'vim-airline/vim-airline-themes'

Plugin 'mg979/vim-visual-multi', {'branch': 'master'}
"Coloca os icones"
"Plugin 'ryanoasis/vim-devicons'
"
Plugin 'Yggdroot/indentLine'

"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Abre automaticamente NERDTree"
autocmd VimEnter * NERDTree

"Settings NERDTree"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" Exit Vim if NERDTree is the only window remaining in the only tab."
" Basicamente, fecha tanto o nerdTree como o vim"
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"Confugoracoes"
:set nu! "seta as linhas"
map q :quit <CR>
set autoindent
set incsearch
set wildmenu
set background = "black"
:set mouse=a
source /home/leandro/.vim/themes/xcodedark.vim
set title
"Configurações  do Syntastic"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0




set encoding=UTF-8

"Configurações do solorized"

syntax enable


hi Normal guibg=NONE ctermbg=NONE

let g:airline_theme= "ayu_dark""



let g:solarized_termtrans = 1
let g:solarized_contrast = "high"
let g:solarized_visibility = "high"
let g:indentLine_setColors = 0
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
