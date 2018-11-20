git -C ~/.vim add .
git -C ~/.vim commit

# Test if we can connect to Github:
wget -q --spider http://github.com
if [ $? -eq 0 ]; then
    git -C ~/.vim push
fi

