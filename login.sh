echo "Running vim login script"

# Test if we can connect to Github:
wget -q --spider http://github.com
if [ $? -eq 0 ]; then
    git -C ~/.vim_runtime pull
fi

export VISUAL=vim
export EDITOR="$VISUAL"
