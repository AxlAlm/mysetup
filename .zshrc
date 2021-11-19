
# Enable Powerlevel10k instant prompt.
source ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k/prompt_powerlevel10k_setup

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# source the oh my souch and bash profile
source $ZSH/oh-my-zsh.sh
source ~/.bash_profile

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)

# Set iTerm2 tab title text
function title_text {
    echo -ne "\033]0;"$*"\007"
}

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/xalmax/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/xalmax/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/xalmax/opt/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/xalmax/opt/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

                                                                                                                                                                13,8          Top
