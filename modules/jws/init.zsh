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
