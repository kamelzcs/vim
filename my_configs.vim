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
set clipboard=unnamedplus
"tagbar appears on the left
let g:tagbar_left=1

vmap <C-c> "+yp
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
nnoremap y "+y
vnoremap y "+y
nnoremap <F12> :TlistToggle<CR>
  

set tags=./tags;/
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

autocmd filetype python nnoremap <F5> : <C-U>!python % <CR>
autocmd filetype c nnoremap <F5> :<C-U>make %:r && ./%:r<CR>
autocmd filetype cpp nnoremap <F5> :<C-U>make %:r && ./%:r<CR>
set listchars=tab:>-,trail:-
set list
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
