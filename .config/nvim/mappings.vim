let mapleader = ","

"{{
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
" }}

" Finders {{
noremap <leader>fC :Files app/controllers<cr>
noremap <leader>fM :Files app/models<cr>
noremap <leader>fR :Files app/repositories<cr>
noremap <leader>fS :Files app/services<cr>
noremap <leader>fT :Files spec<cr>
" }}

" Git helpers {{
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Git commit -v -q<CR>
nnoremap <leader>gt :Git commit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>
nnoremap <leader>s :<C-u>call gitblame#echo()<CR>
" }}

" Autocommands {{
autocmd BufWritePre * :%s/\s\+$//e                              " Remove empty spaces on save
autocmd CursorHold * silent call CocActionAsync('highlight')    " Highlight hovered symbol in the current buffer
" }}

" coc.vim  {{
inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"                " Autoimport suggestions
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"              " Apply the next suggestion
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"          " Apply previous suggestion
inoremap <silent><expr> <C-Space> coc#refresh()                               " Opens up suggestions
" }}

" GoTo code navigation {{
" Coc
"nmap <ESC> :call coc#util#float_hide()<CR>
noremap <c-k> :call CocAction('doHover')<CR>

"autocmd CursorHold * silent call CocActionAsync('doHover')
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD! <Plug>(coc-type-definition)
nmap <silent> gD@ <Plug>(coc-implementation)
nmap <silent> gD# <Plug>(coc-refetences)
" }}

" Testing {{
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>
" }}

" NERDTree {{
nmap <leader>ne :NERDTreeToggle<cr>
nmap <leader>nf :NERDTreeFind<cr>
" }}

" Mappings
map <leader>e :q!<CR>
map <leader>q :q<CR>
map <leader>x :x<CR>
map <leader>w :w<CR>
map <leader>r :e!<CR>
map <C-_> gcc
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>
map cp :let @+= expand("%")<CR>        " Copy current file path to clipboard

" FZF
noremap <c-h> :History<CR>
noremap <c-f> :Ag<space>
noremap <c-p> :Files<cr>
noremap <c-b> :Buffers<cr>
noremap <c-r> :Rg<CR>
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
" Tab {{
noremap <leader>tn :tabnew<cr>
noremap <leader>tl :tabnext<cr>
noremap <leader>th :tabprevious<cr>
noremap <leader>tq :tabclose<cr>
" }}

" Navigation
nnoremap <S-Tab> :bprev<CR>           " Navigate to previous buffer
nnoremap <Tab> :bnext<CR>             " Navigate to next buffer
nnoremap t :b#<CR>                    " Navigate to next buffer
nnoremap <leader>c :Bdelete<CR>           " Close current buffer withour closing the window

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Move splits around
nnoremap <M-h> <C-w>H
nnoremap <M-j> <C-w>J
nnoremap <M-k> <C-w>K
nnoremap <M-l> <C-w>L

" Layout

" Make adjusing split sizes a bit more friendly
noremap <silent> <S-h> :vertical resize +3<CR>
noremap <silent> <S-l> :vertical resize -3<CR>
noremap <silent> <S-j> :resize +3<CR>
noremap <silent> <S-k> :resize -3<CR>
noremap <leader>vs :vsplit<cr>
noremap <leader>hs :split<cr>

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>:call webdevicons#refresh()<cr>
"
" map <c-j> <c-w>j
" map <c-k> <c-w>k
" map <c-h> <c-w>h
" map <c-l> <c-w>l
"
" noremap <leader>vs :vsplit<cr>
" noremap <leader>hs :split<cr>
"
" noremap <leader>tn :tabnew<cr>
" noremap <leader>tl :tabnext<cr>
" noremap <leader>th :tabprevious<cr>
" noremap <leader>tq :tabclose<cr>
"
" " Finders
" noremap <leader>fC :Files app/controllers<cr>
" noremap <leader>fM :Files app/models<cr>
" noremap <leader>fR :Files app/repositories<cr>
" noremap <leader>fS :Files app/services<cr>
" noremap <leader>fT :Files spec<cr>
"
" " fzf.vim
" noremap <c-f> :Ag<space>
" noremap <c-p> :Files<cr>
" noremap <c-b> :Buffers<cr>
"
" " NERDTree
" nmap <leader>ne :NERDTreeToggle<cr>
" nmap <leader>nf :NERDTreeFind<cr>
"
" " Coc
" "nmap <ESC> :call coc#util#float_hide()<CR>
" noremap <c-k> :call CocAction('doHover')<CR>
"
" "autocmd CursorHold * silent call CocActionAsync('doHover')
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gD! <Plug>(coc-type-definition)
" nmap <silent> gD@ <Plug>(coc-implementation)
" nmap <silent> gD# <Plug>(coc-refetences)
"
" " LanguageClient-neovim
" nnoremap <leader>cm :call LanguageClient_contextMenu()<CR><Paste>
