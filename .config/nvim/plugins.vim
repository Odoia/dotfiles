" Plugins are managed by vim-plug
call plug#begin('~/.local/share/nvim/plugged')
" call plug#begin(stdpath('data') . '/plugged')

" Visual
Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'ap/vim-css-color'
Plug 'junegunn/vim-emoji'
Plug 'sheerun/vim-polyglot'
Plug 'TaDaa/vimade'

" File manager
Plug 'mcchrish/nnn.vim'
Plug 'preservim/nerdtree'                           " NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'      " Highlighting Nerdtree
Plug 'ryanoasis/vim-devicons'                       " Icons for Nerdtree
Plug 'pechorin/any-jump.vim'

" Utils
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-test/vim-test'
Plug 'moll/vim-bbye'
Plug 'zivyangll/git-blame.vim'
Plug 'camspiers/lens.vim'                             " Automatically resizes windows

" Language server
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Formatters
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': [
  \   'javascript',
  \   'javascriptreact',
  \   'typescript',
  \   'typescriptreact',
  \   'css',
  \   'less',
  \   'scss',
  \   'json',
  \   'graphql',
  \   'markdown',
  \   'vue',
  \   'yaml',
  \   'html'
  \ ] }

call plug#end()
