# emacsclient aliases
function magit () {
    root=$( git-root 2>/dev/null )
    if [ $? -eq 0 ]; then
        em -l '(jws/magit-status-full-frame)'
    else
        echo "Not a git repository"
    fi
}
alias calc="em -l '(full-calc)'"

# 'vm' alias runs mv backwards, e.g. these are equivalent:
#    mv 1 2
#    vm 2 1
# This is useful if you need to reverse a previous 'mv'.
function vm {
    mv $2 $1
}

# get the weather
alias weather="curl wttr.in"

# put useful emacs bindings back into vi insert mode
# because i have permanent emacs dain bramage
# also these conflict with nothing as far as i can tell?
bindkey -M viins '^A' beginning-of-line
bindkey -M viins '^B' backward-char
bindkey -M viins '^E' end-of-line
bindkey -M viins '^F' forward-char
bindkey -M viins '^K' kill-line
bindkey -M viins '^P' up-history
bindkey -M viins '^N' down-history
