set nu
set relativenumber
set clipboard=unnamedplus
set nowrap                      " Do not wrap long lines
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
"""""""""""""""""
"Rainbow
"“”“”“”“”“”“”“”“
let g:rbpt_colorpairs = [
  \ [ '1',  '#dc322f'],
  \ [ '9',  '#cb4b16'],
  \ [ '13', '#6c71c4'],
  \ [ '2',  '#859900'],
  \ [ '6',  '#2aa198'],
  \ [ '3',  '#b58900'],
  \ [ '5',  '#d33682'],
  \ [ '4',  '#268bd2'],
  \ ]
" Nesting level to stop coloring at.
" This does shift what colors the upper nests will be if changed.
let g:rbpt_max = 16
" Enable rainbow parentheses for all buffers
augroup rainbow_parentheses
  au!
  au VimEnter * RainbowParenthesesActivate
  au BufEnter * RainbowParenthesesLoadRound
  au BufEnter * RainbowParenthesesLoadSquare
  au BufEnter * RainbowParenthesesLoadBraces
augroup END

""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
let g:airline_theme             = 'powerlineish'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1

" vim-powerline symbols
let g:airline_left_sep          = '⮀'
let g:airline_left_alt_sep      = '⮁'
let g:airline_right_sep         = '⮂'
let g:airline_right_alt_sep     = '⮃'
let g:airline_branch_prefix     = '⭠'
let g:airline_readonly_symbol   = '⭤'
let g:airline_linecolumn_prefix = '⭡'

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E111,E114,E121,E501'

let g:pymode_lint_ignore = "E111,E114,E121,E501"
let g:pymode_rope_completion = 0
let g:pymode_lint_on_write = 1
let g:pymode_trim_whitespaces = 0

"tagbar appears on the left
let g:tagbar_left=1

let g:rainbow_active = 1

"changed the ~/.vim/bundle/python-mode/after/indent/python.vim: indentkeys No :,shiftwidth=2
"basic.vim cancled trailing space in python/coffe  deletion

"for esc
imap jj <Esc>

"copy current file path to clipboard
:nmap cp :let @+ = expand("%")<CR>

"vmap <C-c> "+y
"vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
let g:ack_wildignore = 0
let g:acp_enableAtStartup = 0
 " enable completion from tags
let g:ycm_collect_identifiers_from_tags_files = 1
nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"

 " Enable omni completion.
            autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
            autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
            autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
            autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
            autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
            autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
            autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" Disable the neosnippet preview candidate window
" When enabled, there can be too much visual noise
" especially when splits are used.
set completeopt-=preview


"command line paste
cnoremap <C-v> <C-R>+
"nnoremap y "+y
"vnoremap y "+y
" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

function! GetRepoPath()
    let path = system("git rev-parse --show-toplevel")
    return path[:-2]
endfunction

function! GetPcOrSmartFile()
    let nowPath = expand("%:p")
    if nowPath =~ "pc"
        let newPath = substitute(nowPath, "pc", "smart", "")
    else
        let newPath = substitute(nowPath, "smart", "pc", "")
    endif
    return newPath
endfunction

map <leader>jp :tabedit <c-r>=GetPcOrSmartFile()<cr><cr>

"change to root the of the repo
map <leader>h :cd <c-r>=GetRepoPath()<cr><cr>

" Open ack and put the cursor in the right position
map <leader>g :Ack   <C-R>=GetRepoPath()<CR><C-A><right><right><right><right>

" ack in the current file
map <leader><space> :Ack   <C-R>%<C-A><right><right><right><right>


nnoremap <F12> :TlistToggle<CR>
"not auto folding
"let g:pymode_folding=0
let g:NERDTreeWinPos = "right"
"
"not auto trail white spaces
"let g:pymode_utils_whitespaces=0
set tags=./tags;/
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <Leader>vs :vsp <CR>:exec("tag ".expand("<cword>"))<CR>


"template setting
let g:email = "info@luxeys.com"
let g:username = "luxeys"
au FocusLost * :wa
autocmd filetype python nnoremap <F5> : <C-U>!python % <CR>
autocmd filetype r nnoremap <F5> :<C-U>!Rscript % <CR>
autocmd filetype c nnoremap <F5> :<C-U>make %:r && ./%:r<CR>
autocmd filetype cpp nnoremap <F5> :<C-U>!g++ -Wall -g -std=c++0x % -o %:r && ./%:r<CR>
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set list
set scrolloff=3                 " Minimum lines to keep above and below curso
"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
nnoremap <Leader>u :GundoToggle<CR>
let g:Powerline_symbols = 'fancy'
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
let g:Powerline_colorscheme='solarized256'

map <Leader>yr :YRShow<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" TagBar {
        nnoremap <leader>tt :TagbarToggle<CR>
 " Fugitive {
        nnoremap <silent> <leader>ga :Git add %:p<CR><CR>
        nnoremap <silent> <leader>gs :Gstatus<CR>
        nnoremap <silent> <leader>gd :Gdiff<CR>
        "nnoremap <silent> <leader>dfs ZZ:Gedit<CR> 
        nnoremap <silent> <leader>dq :diffoff<cr> <c-w>h :q<cr> 
        nnoremap <silent> <leader>gc :Gcommit<CR>
        nnoremap <silent> <leader>gb :Gblame<CR>
        nnoremap <silent> <leader>gl :Glog<CR>
        nnoremap <silent> <leader>gp :Git push<CR>
        nnoremap <silent> <leader>gr :Gread<CR>
        nnoremap <silent> <leader>gw :Gwrite<CR>
        nnoremap <silent> <leader>ge :Gedit<CR>
        nnoremap <silent> <leader>gg :GitGutterToggle<CR>
"}
 " Tabularize {
        nmap <Leader>a& :Tabularize /&<CR>
        vmap <Leader>a& :Tabularize /&<CR>
        nmap <Leader>a= :Tabularize /=<CR>
        vmap <Leader>a= :Tabularize /=<CR>
        nmap <Leader>a: :Tabularize /:<CR>
        vmap <Leader>a: :Tabularize /:<CR>
        nmap <Leader>a:: :Tabularize /:\zs<CR>
        vmap <Leader>a:: :Tabularize /:\zs<CR>
        nmap <Leader>a, :Tabularize /,<CR>
        vmap <Leader>a, :Tabularize /,<CR>
        nmap <Leader>a,, :Tabularize /,\zs<CR>
        vmap <Leader>a,, :Tabularize /,\zs<CR>
        nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
        vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
" }
