# vim-setup

This is Rob's portable vim setup. Presented without warranty, with the strong caveat that I have no idea what I'm doing.

Note that if you already have a .vimrc file, this will **overwrite** it.

## Installation

**Step 1:**

Download repo and tell .vimrc to load config file `vimrc.vim`

```
git clone git@github.com:robbarry/vim-setup.git ~/.vim --recursive
echo "source ~/.vim/vimrc.vim" > ~/.vimrc
``` 

**Step 2:**

Automatically install plugins (you can ignore errors by hitting `ENTER`)

`vim -c VundleUpdate -c quitall`

## Help

Here's a [good overview](https://vim.rtorr.com/) of vim keyboard shortcuts
