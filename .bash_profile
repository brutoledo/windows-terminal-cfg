# Github
alias gs="git status"
alias gd="git diff"
alias gp="git pull"

# Git finish will push to current branch
# Eg. gf "commit message"
gf() {
 CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"
 git add . && git commit -m "$1" && git push origin "$CURRENT_BRANCH"
}

# Git merge
# Eg. gm branch-name
gm() {
 git merge "$1"
}

# Git checkout
# Eg. gc branch-name
gc(){
 git checkout "$1" && gp
}