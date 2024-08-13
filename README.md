## Dependencies
You need to have installed this dependencies before continue:

- [zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- [Node](https://nodejs.org/en/)
- [Nerd Font compatible font](https://github.com/ryanoasis/nerd-fonts#font-installation)

## Installation

Clone the repository:

```bash
git clone https://github.com/odoia/dotfiles ~/.config
```

Run the install script:

```bash
./.dotfiles/install.sh
```

## Update

Pull the new version of the files:

```bash
cd ~/.dotfiles
git pull origin master
```

Run the update script:

```bash
./.dotfiles/update.sh
```

## After install
Read about COC in:
- [COC-DOC](https://github.com/neoclide/coc.nvim)

Install COC components

```bash
:CocInstall coc-json coc-solargraph coc-tsserver coc-vimlsp
```

Run COC configuration
```bash
:CocConfig
```
Add in coc-settings.json
```bash
{
  "solargraph.diagnostics": true,
  "solargraph.autoformat": true,
  "solargraph.formatting": true,

  "snippets.ultisnips.directories":
  [
    "UltiSnips",
    "~/.config/nvim/utils/snips"
  ]
}
```
## Shortcuts

```bash
mapleader => ,

,ev => open init config in nvim path
,sv => Webdevicons refresh

j => down
k => up
l => left
h => right

,vs => vertical split
,hs => horizontal split

,tn => new tab
,tl => next tab
,th => previous tab
,tq => close tab

,fC => find in app/controllers
,fM => find in app/models
,fR => find in app/repositories
,fS => find in app/services
,fT => find in spec

control f => :Ag
control p => :Files
control b => :Buffers

,ne => open nerdtree
,nf => open nerdtree find

control k => call CocAction

gd  => coc-definition
gD! => coc-type-definition
gD@ => coc-implementation
gD# => coc-references

,cm => call LanguageClient_contextMenu
```
## License
[MIT](https://choosealicense.com/licenses/mit/)
