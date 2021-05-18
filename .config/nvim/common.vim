" Mouse scrolling {{
set mouse=nicr
set mouse=a
" }}

" GUI options {{
set guioptions-=m   " remove menu bar
set guioptions-=T   " remove tooltbar
set guioptions-=r   " remove right-hand scroll bar
set guioptions-=L   " remove left-hand scroll bar
set guifont=FiraCode\ Nerd\ Font:h15
" }}

" Navigation
set splitbelow splitright             " Splits and Tabbed Files
" }}

filetype plugin indent on    " required
" General Settings
set shell=/bin/zsh
set cursorline                  " Highlight the line on which the cursor lives.
set scrolloff=3                 " Always show at least one line above/below the cursor.
set sidescrolloff=5             " Always show at least one line left/right of the cursor.
set laststatus=2                " Always shows statusline
set matchpairs+=<:>             " Highlight matching pairs of brackets. Use the '%' character to jump between them.
set path+=**                    " Searches current directory recursively.
set wildmenu                    " Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.
set number                      " Display line numbers
set clipboard=unnamedplus       " Copy/paste between vim and other programs.
set notimeout                   " Remove timeout for partially typed commands
set showtabline=2               " always show tabline
set foldmethod=indent           " allow folding
set foldlevelstart=20           " files are always loaded with opened folds
set updatetime=300              " Having longer updatetime leads to poor UX
set autoread                    " Reload file when detected to have been changed outside vim
syntax enable
let g:rehash256 = 1

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Identation
set smarttab
set expandtab       " Use space instead of tabs
set shiftwidth=2    " One tab == two spaces.
set tabstop=2       " One tab == two spaces.

" Theme
set termguicolors
colorscheme ayu

" NERDTree {{
" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | wincmd p | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" }}


" set hidden
" set number
" set inccommand=split
" set nowrap
" set modifiable
" set colorcolumn=120
" set clipboard=unnamed
"
" " Theme
" syntax enable
" set background=dark
" colorscheme gruvbox
"
" " Indentation
" filetype indent on
" set autoindent
" set smartindent
" set smarttab
" set shiftwidth=2
" set softtabstop=2
" set tabstop=2
" set expandtab
