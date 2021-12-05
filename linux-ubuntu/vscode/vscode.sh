

# install vscode (https://code.visualstudio.com/docs/setup/linux)
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders


# color theme
code --install-extension nothlng.one-monokai-python

# extensions
code --install-extension ms-python.python
code --install-extension ms-toolsai.jupyter
code --install-extension coenraads.bracket-pair-colorizer-2
code --install-extension vscode-icons-team.vscode-icons
code --install-extension njpwerner.autodocstring
code --install-extension redhat.vscode-yaml
code --install-extension ionutvmi.path-autocomplete
code --install-extension bungcip.better-toml

# copying over settings and keybindings
cp settings.json ~/.config/Code/User/settings.json
cp keybindings.json ~/.config/Code/User/keybindings.json

