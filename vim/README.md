# Vim

## Plugins

- [NERDTree](https://github.com/scrooloose/nerdtree) file system explorer for vim.
- [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin) git status indicators for nerdtree
- [vim-fugitive](https://github.com/tpope/vim-fugitive) for Git (`:Gblame`, `G:Gdiff` etc)
- [vim-flake8](https://github.com/nvie/vim-flake8) flake8 python files upon saving within vim
- [indentLine](https://github.com/Yggdroot/indentLine) vim indent guides

## General useful vim commands

Find tips and tricks on vimcasts.org

- `shift+v`: visual line
- `ctrl+v`: visual block
- `u` undo
- `ctrl+r` redo
- `:e` refresh an opened file
- `:set list` show whitespace
- `:so ~/.vimrc` reload vimrc file without closing vim
- `:%y` (or `:%y+` or `gg"+yG`) select all and copy to clipboard
- (un)indent multiple lines
  - `shift+v` to select lines, `>` to indent, `<` to unindent
  - `tab` to indent, `shift+tab` to unindent (using keybindings in my vimrc)
- insert text in front of multiple lines at once:
  - select set of lines (`ctrl+v`), then `shift+i`, then insert character, then `esc` to apply to all selected lines

## Troubleshooting

If flake8 plugin doesnt work, try creating a symlink from `ftplugin` folder to `plugin`

```
ln -s ~/.vim/bundle/vim-flake8/ftplugin ~/.vim/bundle/vim-flake8/plugin
```
