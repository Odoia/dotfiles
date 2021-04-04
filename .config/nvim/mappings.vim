let mapleader = ","
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>:call webdevicons#refresh()<cr>

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

noremap <leader>vs :vsplit<cr>
noremap <leader>hs :split<cr>

noremap <leader>tn :tabnew<cr>
noremap <leader>tl :tabnext<cr>
noremap <leader>th :tabprevious<cr>
noremap <leader>tq :tabclose<cr>

" Finders
noremap <leader>fC :Files app/controllers<cr>
noremap <leader>fM :Files app/models<cr>
noremap <leader>fR :Files app/repositories<cr>
noremap <leader>fS :Files app/services<cr>
noremap <leader>fT :Files spec<cr>

" fzf.vim
noremap <c-f> :Ag<space>
noremap <c-p> :Files<cr>
noremap <c-b> :Buffers<cr>

" NERDTree
nmap <leader>ne :NERDTreeToggle<cr>
nmap <leader>nf :NERDTreeFind<cr>

" Coc
"nmap <ESC> :call coc#util#float_hide()<CR>
noremap <c-k> :call CocAction('doHover')<CR>

"autocmd CursorHold * silent call CocActionAsync('doHover')
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD! <Plug>(coc-type-definition)
nmap <silent> gD@ <Plug>(coc-implementation)
nmap <silent> gD# <Plug>(coc-refetences)

" LanguageClient-neovim
nnoremap <leader>cm :call LanguageClient_contextMenu()<CR><Paste>
