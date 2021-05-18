" " lightline
" let g:lightline = {
"       \ 'colorscheme': 'gruvbox',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"       \ },
"       \ 'component_function': {
"       \   'gitbranch': 'fugitive#head',
"       \   'filetype': 'MyFiletype',
"       \   'fileformat': 'MyFileformat',
"       \ },
"       \ }
"
"

" Theme
let ayucolor="gruvbox"

" IndentLine {{
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

let g:lightline#bufferline#show_number      = 1
let g:lightline#bufferline#shorten_path     = 0
let g:lightline#bufferline#show_number      = 0
let g:lightline#bufferline#unnamed          = '[No Name]'
let g:lightline#bufferline#read_only        = ' '
let g:lightline#bufferline#modified         = ' '
let g:lightline#bufferline#enable_devicons  = 1      " enable devicons, only support utf-8
let g:lightline#bufferline#more_buffers     = ''

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['gitbranch'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ },
      \ 'component_function': {
      \    'filename': 'LightlineFilename',
      \    'gitbranch': 'FugitiveHead'
      \ }
      \ }

" }}

" nnn {{
" Opens the nnn window in a split
" let g:nnn#layout = 'new' " or vnew, tabnew etc.

" Or pass a dictionary with window size
" let g:nnn#layout = { 'left': '~20%' } " or right, up, down

" Floating window (neovim latest and vim with patch 8.2.191)
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
" }}

" NERDTree {{
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
" }}

" Testing {{
let test#strategy = {}
let test#strategy.nearest = 'neovim'
let test#strategy.file    = 'dispatch'
let test#strategy.suite   = 'kitty'
" }}



" Polyglot {{
let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
" }}


" GUI options {{

let g:neovide_cursor_vfx_mode = "wireframe"
let g:neovide_cursor_animation_length=0.1
let g:neovide_cursor_trail_length=0.1
" }}

" Any Jump {{
let g:any_jump_ignored_files = ['*.rbi']
" }}
