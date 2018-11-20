# vim-setup

This is Rob's portable vim setup. Presented without warranty, with the strong caveat that I have no idea what I'm doing.

Note that if you already have a .vimrc file, this will **overwrite** it.

## Installation

**Step 0:**

If you're in Windows, install a decent terminal program. I use [this one](http://babun.github.io/).

**Step 1:**

Download repo:

`git clone git@github.com:robbarry/vim-setup.git ~/.vim --recursive`

**Step 2:**

Tell `.vimrc` where your configuration file is:

`echo "source ~/.vim/vimrc.vim" > ~/.vimrc`

*Optional*
Automatically check for updates on login: `echo "source ~/.vim/login.sh" >>
.bashrc`

And logout: `echo "source ~/.vim/logout.sh" >> .bash_logout`

**Step 2:**

For Python development, install
[autopep8](https://pypi.python.org/pypi/autopep8/): `pip install autopep8`

**Step 3:**

Automatically install plugins (you can ignore errors by hitting `ENTER`)

`vim -c VundleUpdate -c quitall`

## Help

Here's a [good overview](https://vim.rtorr.com/) of vim keyboard shortcuts
