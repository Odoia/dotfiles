## Dependencies
You need to have installed this dependencies before continue:

- [zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- [Packer](https://github.com/wbthomason/packer.nvim)
- [homebrew](https://brew.sh)

## Installation

Clone the repository:

```bash
git clone https://github.com/odoia/dotfiles ~/.config
```

## After install
Use these commands inside nvim:
- :PackerSync
- :LspInstall (you lsp language here ex: :LspInstall ruby )

## Shortcuts

```bash
mapleader => ,

--> nvim ctrl mapping
  j => down
  k => up
  l => left
  h => right
<--

--> Split
  ,vs => vertical split
  ,hs => horizontal split
<--

--> Tab
  ,tn => new tab
  ,tl => next tab
  ,th => previous tab
  ,tq => close tab
<--

--> (WIP)-custom finder-(WIP)
  ,fC => find in app/controllers
  ,fM => find in app/models
  ,fR => find in app/re,npositories
  ,fS => find in app/services
  ,fT => find in spec
<--

--> Finder(telescope) 
  ,ff => :[F]ind [F]iles
  ,fh => :[F]ind [H]elp
  ,fw => :[F]ind current [W]ord
  ,fg => :[F]ind by [G]rep
  ,fd => :[F]ind [D]iagnostics
  ,fb => :[F]ind [B]uffers
<--

--> Tree(nvim-tree)
  ,ne => tree toggle
  ,nf => tree find file
  ,nr => tree refresh
  ,ni => tree resize +5 px
  ,nd => tree resize -5 px
<--

--> Language server
  gd  => jumps to the definition of the symbol under the cursor
  ,lh => information about the symbol under the cursos in a floating window
  gi  => lists all the implementations for the symbol under the cursor in the quickfix window
  ,rn => renaname old_fname to new_fname
  ca  => selects a code action available at the current cursor position
  gr  => lists all the references to the symbl under the cursor in the quickfix window
  ,ld => vim.diagnostic.open_float()
  [d  => vim.diagnostic.goto_prev()
  ]d  => vim.diagnostic.goto_next()
  ,lq => vim.diagnostic.setloclist()
  ,lf => formats the current buffer
<--

```
## License
[MIT](https://choosealicense.com/licenses/mit/)
