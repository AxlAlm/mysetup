
# fix to just go to root
cd

# run zsh
if test -t 1; then
exec zsh
fi