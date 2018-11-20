#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime
source ~/.vim_runtime/vimrcs/startup.vim' > ~/.vimrc

touch ~/.bash_profile
if ! grep -Fxq "source ~/.vim_runtime/login.sh" ~/.bash_profile
then
    echo "source ~/.vim_runtime/login.sh" >> ~/.bash_profile
fi

touch ~/.bash_logout
if ! grep -Fxq "source ~/.vim_runtime/logout.sh" ~/.bash_logout
then
    echo "source ~/.vim_runtime/logout.sh" >> ~/.bash_logout
fi

pip -q install autopep8 > /dev/null 2>&1

vim -i NONE -c VundleUpdate -c quitall

echo "Installed"
