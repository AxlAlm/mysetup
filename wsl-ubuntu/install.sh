
# run the sperate install scripts
sh zsh.sh
sh pyenv_venv.sh
sh poetry.sh

# move files
cp .alias ~/.alias
cp .zshrc ~/.zshrc
cp .bashrc ~/.bashrc

source ~/.zshrc