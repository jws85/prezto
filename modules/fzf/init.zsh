# fzf is a fuzzy-search engine for shells, available at
# https://github.com/junegunn/fzf

# This plugin is tiny and just uses the default fzf config stuff.
# So follow the given instructions in the fzf readme, but when you
# run its installer script, run it with --no-update-rc:
#   ~/.fzf/install --no-update-rc
# to install the binaries and fzf config files, but leave config
# files alone.

if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
else
    if [ -x "$(which git)" ]; then
        git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
        ~/.fzf/install --no-update-rc
    fi
fi
