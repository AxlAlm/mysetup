


## SCRIPT TO SETUP iOS
#
# help guides:
#       https://edaoud.com/blog/2020/02/01/automate-your-computer-setup-dotfiles/
#       https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789


# ----- Install brew -----
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# ----- Code setup -----
brew install --cask python3
brew install jupyter
brew install --cask vim
brew install --cask htop
brew install --cask wget


# ---- Browser setup -----
brew install --cask firefox


# ---- Misc Apps setup ----
brew install --cask slack
brew install --cask spotify


# ---- Wallpaper Setup
cp $(pwd)/wallpaper.jpg $HOME/Pictures/wallpaper.jpg
# regarding relative paths in osascript: https://stackoverflow.com/questions/24152552/relative-file-paths-with-applescript
osascript -e 'tell application "Finder" to set desktop picture to (POSIX path of (path to home folder)) & "Pictures/wallpaper.jpg" as POSIX file'


# ------- EDITOR SETUP ------

# install vscode
brew install --cask visual-studio-code

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

# copying over settings and keybindings
cp settings.json ~/Library/Application\ Support/Code/User/settings.json
cp keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

# install kite for auto-completion
brew install --cask kite
code --install-extension kiteco.kite




# ------ MacOS settings Setup ----

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# always show library folder
chflags nohidden ~/Library/


# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock tilesize -integer 25
killall Dock

# create a screenshot folder
mkdir $HOME/Screenshots
defaults write com.apple.screencapture location -string "$HOME/Screenshots"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string “png”

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=” “


# Set default apps for certain files extensions
# 
# Use this command to figure out the UTI of a file ( source https://github.com/Lord-Kamina/SwiftDefaultApps)
# mdls -name kMDItemContentType -name kMDItemContentTypeTree -name kMDItemKind test.py
#
# using duti (https://github.com/moretension/duti) to det defualt apps

brew install duti
duti -s com.microsoft.VSCode public.python-script all
duti -s com.microsoft.VSCode dyn.ah62d4rv4ge80w6d3r3va all
duti -s com.microsoft.VSCode public.yaml all
duti -s com.microsoft.VSCode public.json all
duti -s com.microsoft.VSCode public.plain-text all
duti -s com.microsoft.VSCode public.comma-separated-values-text all
duti -s com.microsoft.VSCode net.daringfireball.markdown all
duti -s com.microsoft.VSCode public.shell-script all


# ----- TERMINAL SETUP ----- 

# install iterm2
brew install --cask iterm2

#  install Zsh
brew install zsh

# install Oh-My-Zsh
#
# guides:
#           https://0n3z3r0n3.medium.com/oh-my-zsh-configuration-guide-for-macos-terminal-3ee6003b09d5
#
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#### install zsh-completions and zsh-syntax-highlighting 
brew install zsh-syntax-highlighting

# install pwerlevel10k theme
# https://github.com/romkatv/powerlevel10k#oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#mv ZSH FILE to ~/.zshrc
mv .zshrc ~/.zshrc

# run p10k configuration
p10k configure