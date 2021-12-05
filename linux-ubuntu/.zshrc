

# load our aliases
if [ -f ~/.alias ]; then
    . ~/.alias
fi


#### OH MY zsh STUFF ######

# Path to your oh-my-bash installation.
export ZSH=$HOME/.oh-my-zsh

# theme folder
ZSH_THEME="fino" # fino


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
    web-search
    copydir
    copyfile
    copybuffer
    dirhistory
    jsontools
    #poetry
	)

source $ZSH/oh-my-zsh.sh


## pyenv stuff
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1'
