set runtimepath+=~/vimConf

source ~/vimConf/vimrcs/basic.vim
source ~/vimConf/vimrcs/filetypes.vim
source ~/vimConf/vimrcs/plugins_config.vim
source ~/vimConf/vimrcs/extended.vim




" Disable NeoComplCache for certain filetypes
"if has('autocmd')
  "autocmd FileType python,c,cpp,pandoc,markdown nested NeoComplCacheLock
 "endif
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

"" Plugin key-mappings.
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)
"
"" SuperTab like snippets behavior.
"imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)"
"\: pumvisible() ? "\<C-n>" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)"
"\: "\<TAB>"
"
"" For snippet_complete marker.
"if has('conceal')
"  set conceallevel=2 concealcursor=i
"endif


set nocompatible              " be iMproved
filetype off                  " required!
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non-GitHub repos
Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
Bundle 'file:///Users/gmarik/path/to/plugin'
" ...
"Bundle 'Shougo/neocomplete'

"Bundle 'Shougo/neosnippet'

"Bundle 'Shougo/neosnippet-snippets'

"Bundle 'Shougo/neocomplcache'

Bundle 'tpope/vim-fugitive'

Bundle 'scrooloose/nerdcommenter'

Bundle 'scrooloose/syntastic'

Bundle 'majutsushi/tagbar'

Bundle 'altercation/vim-colors-solarized'

"Bundle 'altercation/solarized'

"Bundle 'kevinw/pyflakes-vim'

Bundle 'Raimondi/delimitMate'

Bundle 'sigurdga/gnome-terminal-colors-solarized'

Bundle 'Lokaltog/vim-easymotion'

Bundle 'klen/python-mode'

Bundle 'vim-scripts/YankRing.vim'

Bundle 'mileszs/ack.vim'

Bundle 'tpope/vim-surround'

Bundle 'rstacruz/sparkup'

Bundle 'aperezdc/vim-template'

Bundle 'Glench/Vim-Jinja2-Syntax'

Bundle 'Lokaltog/powerline-fonts'

Bundle 'mattn/emmet-vim'

Bundle 'Valloric/YouCompleteMe'

Bundle 'airblade/vim-gitgutter'

filetype plugin indent on     " required!

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

try
source ~/vimConf/my_configs.vim
catch
endtry
