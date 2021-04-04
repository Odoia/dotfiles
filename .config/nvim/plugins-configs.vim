" lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ },
      \ }

" NERDTree
let NERDTreeShowHidden=1

" vim-test
nmap <silent> <leader>T :TestFile -strategy=neovim<CR>
nmap <silent> <leader>lT :TestNearest<CR>

" snippet_version 0 is legacy 1 is new
let g:snipMate = { 'snippet_version' : 1 }

let g:ale_fixers = {
      \ 'ruby': ['rubocop'],
      \ }

let g:ale_linters = {
      \  'javascript': ['eslint'],
      \  'ruby': ['brakeman', 'reek', 'rubocop', 'solargraph', 'standardrb'],
      \}

let g:ale_sign_error = '>>'
let g:ale_sign_info = '--'

let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline_section_b = '%{airline#util#wrap(airline#extensions#branch#get_head(),0)[0:40]}'
let g:airline_section_z = ''
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline#extensions#wordcount#formatter#default#fmt = '%d w'
