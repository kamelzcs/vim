syntax on
set t_Co=16
set background=dark
let g:solarized_termcolors=16
"let g:solarized_termtrans = 1
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
"set term=xterm-256color
colorscheme solarized

set nu
set relativenumber
set clipboard=unnamedplus
set nowrap                      " Do not wrap long lines
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)

let g:pymode_lint_ignore = "E111,E121,E501"

"tagbar appears on the left
let g:tagbar_left=1

"changed the ~/.vim/bundle/python-mode/after/indent/python.vim: indentkeys No :,shiftwidth=2
"basic.vim cancled trailing space in python/coffe  deletion

"for esc
imap jj <Esc>

"vmap <C-c> "+y
"vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

let g:acp_enableAtStartup = 0
 " enable completion from tags
let g:ycm_collect_identifiers_from_tags_files = 1
 " remap Ultisnips for compatibility for YCM
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

 " Enable omni completion.
            autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
            autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
            autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
            autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
            autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
            autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
            autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" For snippet_complete marker.
if has('conceal')
    set conceallevel=2 concealcursor=i
endif

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

" Open ack and put the cursor in the right position
map <leader>g :Ack   <C-R>=GetRepoPath()<CR><C-A><right><right><right><right>

" ack in the current file
map <leader><space> :Ack   <C-R>%<C-A><right><right><right><right>


nnoremap <F12> :TlistToggle<CR>
"not auto folding
let g:pymode_folding=0
let g:NERDTreeWinPos = "right"
"
"not auto trail white spaces
"let g:pymode_utils_whitespaces=0
let g:pymode_trim_whitespaces = 0
set tags=./tags;/
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <Leader>vs :vsp <CR>:exec("tag ".expand("<cword>"))<CR>


"template setting
let g:email = "info@luxeys.com"
let g:username = "luxeys"
au FocusLost * :wa
autocmd filetype python nnoremap <F5> : <C-U>!python % <CR>
autocmd filetype c nnoremap <F5> :<C-U>make %:r && ./%:r<CR>
autocmd filetype cpp nnoremap <F5> :<C-U>make %:r && ./%:r<CR>
"set listchars=tab:>-,trail:-
"set listchars=tab:>-,trail:-,extends:#,nbsp:.
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set list
set scrolloff=3                 " Minimum lines to keep above and below curso
"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

map <Leader>yr :YRShow<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" TagBar {
        nnoremap <leader>tt :TagbarToggle<CR>
 " Fugitive {
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
