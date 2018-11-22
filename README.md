# vim-setup

This is Rob's portable vim setup. Presented without warranty, with the strong
caveat that I have no idea what I'm doing.

Note that if you already have a .vimrc file, this will **overwrite** it.

## Installation

### Step 0

If you're in Windows, install a decent terminal program. I use [this
one](http://babun.github.io/).

### Clone the repository

Download repo:

```
$ git clone git@github.com:robbarry/vim-setup.git ~/.vim_runtime --recursive
```

### Automatic installation

Run installation script

```
sh ~/.vim_runtime/install.sh
```

And you're done.

### Manual installation

Alternatively, rather than running `install.sh`, you can follow these manual steps:

Tell `.vimrc` where your configuration file is:

`$ echo "source ~/.vim/vimrc.vim" > ~/.vimrc`

Automatically check for updates on login and logout:

```
$ echo "source ~/.vim/login.sh" >> .bashrc
$ echo "source ~/.vim/logout.sh" >> .bash_logout
```

For Python development, install
[autopep8](https://pypi.python.org/pypi/autopep8/):

```
pip install autopep8
```

You can then automagically format Python code with PEP8 standards by
highlighting the code in `visual` mode and then typing `gq`.

Automatically install plugins (you can ignore errors by hitting `ENTER`)

```
$ vim -c VundleUpdate -c quitall
```

## Help

Here's a [good overview](https://vim.rtorr.com/) of vim keyboard shortcuts
