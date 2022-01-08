
#pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# virtualenv
sudo apt install python3-pip
pip install pipx
pipx install virtualenv

#pyenv-virtualenv
git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv


# FIX FOR BUILD FAIL when isntalling python version 
# https://github.com/pyenv/pyenv/issues/1621#issuecomment-857414823
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
  libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
  xz-utils tk-dev               