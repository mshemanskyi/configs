# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Shortcuts
alias box="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dev="cd ~/Dev"

alias sys_info='sw_vers'
alias reload!='. ~/.zshrc'
alias c='pygmentize -O style=tomorrownighteighties -f console256 -g'
# Count files in subdirs
alias lll='for i in *; do echo "`ls -1aRi "$i" | awk "/^[0-9]+ / { print $1 }" | sort -u | wc -l` $i" ; done | sort -n'
alias grep='grep --color=auto'

# local webserver
alias _w="open http://localhost:8000;python -m SimpleHTTPServer 8000"

# tree aliases
alias tree1="tree -L 1"
alias tree1h="tree -L 1 -h"
alias tree2="tree -L 2"
alias tree2h="tree -L 2 -h"
alias tree3="tree -L 3"
alias tree3h="tree -L 3 -h"

#git
alias g='git'

# mkdir, cd into it (via http://onethingwell.org/post/586977440/mkcd-improved)
function mkcd () {
    mkdir -p "$*"
    cd "$*"
}
