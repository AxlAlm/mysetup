

sudo apt-get update

# install curl
sudo apt install curl

# run the sperate install scripts
sh terminal/zsh.sh
sh terminal/kitty.sh
sh venvs/pyenv_venv.sh
sh venvs/docker.sh
sh venvs/poetry.sh
sh vscode/vscode.sh

# misc
pip install jupyter

#
cp .alias ~/.alias
cp .zshrc ~/.zshrc

source ~/.zshrc 