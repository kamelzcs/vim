set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" My bundles here:
"
" original repos on GitHub
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
" non-GitHub repos
Plugin 'git://git.wincent.com/command-t.git'

Plugin 'scrooloose/nerdcommenter'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/syntastic'

Plugin 'majutsushi/tagbar'

"Plugin 'altercation/vim-colors-solarized'

Plugin 'Raimondi/delimitMate'

Plugin 'sigurdga/gnome-terminal-colors-solarized'

Plugin 'klen/python-mode'

Plugin 'YankRing.vim'

Plugin 'mileszs/ack.vim'

Plugin 'tpope/vim-surround'

Plugin 'aperezdc/vim-template'

Plugin 'Glench/Vim-Jinja2-Syntax'

Plugin 'Lokaltog/powerline-fonts'

Plugin 'mattn/emmet-vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'airblade/vim-gitgutter'

Plugin 'bling/vim-airline'

Plugin 'godlygeek/tabular'

Plugin 'SirVer/ultisnips'

Plugin 'honza/vim-snippets'

Plugin 'mru.vim'

Plugin 'plasticboy/vim-markdown'

Plugin 'kien/ctrlp.vim'

Plugin 'jcfaria/Vim-R-plugin'

Plugin 'sjl/gundo.vim'

Plugin 'flazz/vim-colorschemes'

Plugin 'bufexplorer.zip'

Plugin 'taglist.vim'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'edsono/vim-matchit'

Plugin 'elzr/vim-json'

Plugin 'kshenoy/vim-signature'

Plugin 'evanmiller/nginx-vim-syntax'

Plugin 'pangloss/vim-javascript'

Plugin 'kien/rainbow_parentheses.vim'

Plugin 'tpope/vim-repeat'

Plugin 'terryma/vim-expand-region'

call vundle#end()
filetype plugin indent on     " required!
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
source ~/vimConf/vimrcs/basic.vim
source ~/vimConf/vimrcs/filetypes.vim
source ~/vimConf/vimrcs/plugins_config.vim
source ~/vimConf/vimrcs/extended.vim
source ~/vimConf/my_configs.vim
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
syntax enable
set t_Co=16
set background=dark
let g:solarized_termcolors=16
let g:solarized_contrast="hight"
colorscheme solarized
