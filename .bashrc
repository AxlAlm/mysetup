
# to be able to activate pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#  set pyenv path
export PATH="$(pyenv root)/shims:$PATH"

# disable prompt for pyenv-virtualenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1