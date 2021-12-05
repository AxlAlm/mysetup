
# reinstall kitty if its already installed
if ! type "$kitty" > /dev/null; then
    sudo apt purge kitty
    rm -rf ~/.config/kitty
fi

#install kitty
sudo apt install kitty

# isntall theme
THEME_NAME="Galaxy"

THEME=https://raw.githubusercontent.com/dexpota/kitty-themes/master/themes/"$THEME_NAME".conf
wget "$THEME" -P ~/.config/kitty/kitty-themes/themes


# copy theme to the right place
cp ~/.config/kitty/kitty-themes/themes/"$THEME_NAME".conf ~/.config/kitty/"$THEME_NAME".conf


# add config
full_path=$(realpath $0)
dir_path=$(dirname $full_path)
cp $dir_path/kitty.conf ~/.config/kitty/kitty.conf