# shell shortcuts
alias vshell="cat $HOME/.bash_aliases"
alias eshell="vim $HOME/.bash_aliases"
alias sshell="source $HOME/.bash_aliases"
alias vimrc="vim $HOME/.vim/vimrc"
alias etmux="nvim $HOME/.tmux.conf"

# general
alias tmux="tmux -u"

# rubrik
alias sdb="$HOME/0-workspace/sdmain/lab/sd_dev_box/sd_dev_box --sdmain_repo $HOME/0-workspace/sdmain"
alias activate="source $HOME/0-workspace/sdmain/polaris/.buildenv/bin/activate"
alias portal="$HOME/0-workspace/portal_client"

# Disable timeout auto-logout
export TMOUT=

# git
alias gupdate="git remote update"
alias gpull="git remote update; git pull"

# $1 = Number of entries to fetch
# $2 = /path/to/location
glog() {
    git log --color=always \
        --pretty=format:"%C(Yellow)%cd%Creset %Cred%h%Creset %Cgreen%<(50)%ae%Creset %s" \
        -n "$1" "$2"
}
glogr() {
    git log --color=always \
        --pretty=format:"%C(Yellow)%cd%Creset %Cred%h%Creset %Cgreen%<(50)%ae%Creset %s" \
        -n "$1" "$2" \
        | egrep -i "bowen.lei|zhebin.zhang|dhananjay.mantri|hy.nguyen|swati.sapar|sean.kung"
}

# repo for dotfiles
# https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=/home/ubuntu/1-config/ --work-tree=/home/ubuntu'

#Directories
alias cdsdm="cd $HOME/0-workspace/sdmain/"
alias cdnv="cd $HOME/.config/nvim"

