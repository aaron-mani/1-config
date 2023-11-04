# shell shortcuts
alias vshell="cat $HOME/.bash_aliases"
alias eshell="nvim $HOME/.bash_aliases"
alias sshell="source $HOME/.bash_aliases"
alias vimrc="nvim $HOME/.vim/vimrc"
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

glog() {
  commits="10" # default # commits to display
  branch="remotes/origin/master" # default git branch
  location="." # default project path
  reports=false
  OPTIND=1

  while getopts "hrc:b:l:" option; do
    case "${option}" in
      h) # display help
        echo "Usage: $0 [-h] [-r] [-c commits] [-b branch] [-l location]" >&2
        return;;
      r) # filter reports team specific commits only
        reports=true
        commits="1000";;
      c)
        commits=${OPTARG};;
      b)
        branch=${OPTARG};;
      l)
        location=${OPTARG};;
      *)
        echo "Invalid arg! Usage: $0 [-h] [-r] [-c commits] [-b branch] [-l location]" >&2
        return;;
    esac
  done

  if $reports; then
    git log --color=always \
      --pretty=format:"%C(Yellow)%cd%Creset %Cred%h%Creset %Cgreen%<(50)%ae%Creset %s" \
      -n "$commits" "$branch" -- "$location" \
      | egrep -i "bowen.lei|zhebin.zhang|dhananjay.mantri|hy.nguyen|swati.sapar|sean.kung"
    else
      git log --color=always \
      --pretty=format:"%C(Yellow)%cd%Creset %Cred%h%Creset %Cgreen%<(50)%ae%Creset %s" \
      -n "$commits" "$branch" -- "$location"
  fi
}

# repo for dotfiles
# https://www.atlassian.com/git/tutorials/dotfiles
alias cgit='/usr/bin/git --git-dir=$HOME/1-config/ --work-tree=$HOME'

#Directories
alias cdsdm="cd $HOME/0-workspace/sdmain/"
alias cdnv="cd $HOME/.config/nvim"

