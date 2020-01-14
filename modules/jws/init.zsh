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
