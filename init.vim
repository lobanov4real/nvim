" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mtdl9/vim-log-highlighting'
Plugin 'altercation/vim-colors-solarized'
Plugin 'othree/xml.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'plasticboy/vim-markdown'
Plugin 'yggdroot/indentline'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'
Plugin 'wincent/command-t'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rbong/vim-flog'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'chase/vim-ansible-yaml'
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
set fileencodings=utf-8,cp1251,cp866,koi8-r
set nowrap
set nobackup "no backup files
set nowritebackup "only in case you don't want a backup file while editing
set noswapfile "no swap files
set clipboard=unnamed
set number
set mouse=a
set runtimepath+=~/.vim/after
set nocompatible              " be iMproved, required
filetype off                  " required
set shada="NONE"
set viminfo="NONE"

" vim-airline/vim-airline-themes
let g:airline#extensions#tabline#enabled = 1

" vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:CommandTPreferredImplementation='lua'

" yuttie/comfortable-motion.vim
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

set guicursor=n-v-c:hor30,i-ci-ve:ver35,r-cr:hor30,o:hor50
	\,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
	\,sm:hor30
