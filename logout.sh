echo "Loading vim logout script"

git -C ~/.vim_runtime add .
git -C ~/.vim_runtime commit

# Test if we can connect to Github:
wget -q --spider http://github.com
if [ $? -eq 0 ]; then
    git -C ~/.vim_runtime push
fi

