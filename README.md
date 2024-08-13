## Dependencies
You need to have installed this dependencies before continue:

- [zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- [Node](https://nodejs.org/en/)
- [Nerd Font compatible font](https://github.com/ryanoasis/nerd-fonts#font-installation)

## Installation

Clone the Project into .config Directory:

```bash
git clone https://github.com/odoia/dotfiles
```

Open nvim and intall using:

```bash
:lazy
```
## After install
Read about Solargraph in:
- [Solargraph](https://solargraph.org)

Install Solargraph gem

```bash
gem install --user-install solargraph
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
