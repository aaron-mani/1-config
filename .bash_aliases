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
  remotes="remotes/origin"
  branch="$remotes/master" # default git branch
  dir="." # default project directory path
  reports_team="bowen.lei|zhebin.zhang|rahul.bhardwaj|hy.nguyen|siddhant.sorann|siddhant-rbrk|swati.sapar|sean.kung"
  events_team="naimish.viradia|archit.gupta|srivardhan.annam|jordan.barkley|noah.solomon"
  reports=false
  events=false
  OPTIND=1

  while getopts "hrec:b:d:" option; do
    case "${option}" in
      h) # display help
        echo "Usage: $0 [-h] [-r{c=5000}] [-e{c=5000}] [-c commits{10}] [-b branch{master}[..branch]] [-d directory{.}]" >&2
  while getopts "hrc:b:d:" option; do
    case "${option}" in
      h) # display help
        echo "Usage: $0 [-h] [-r{c=5000}] [-c commits{10}] [-b branch{master}[..branch]] [-d directory{.}]" >&2
        return;;
      r) # filter reports team specific commits only
        reports=true
        commits="5000";;
      e) # filter events team specific commits only
        events=true
        commits="5000";;
      c) # number of commits to display
        commits=${OPTARG};;
      b) # get commit log for a specific branch or commit diff between branches
        # echo "Parsing $OPTARG"
        if [[ ${OPTARG} =~ (.+)".."(.+) ]]; then
          echo "Branches found"
          branch1="$remotes/${BASH_REMATCH[1]}"
          branch2="$remotes/${BASH_REMATCH[2]}"
          branch="$branch1..$branch2"
        else
          # echo "Branches not found"
          branch="$remotes/${OPTARG}"
        fi
        # echo "Parsed branch: $branch"
        ;;
      d) # directory path
        dir=${OPTARG};;
      *)
        echo "Invalid arg! Usage: $0 [-h] [-r] [-c commits] [-b branch] [-d dir]" >&2
        return;;
    esac
  done

  if $reports && $events; then
    git log \
      --pretty=format:"%C(Yellow)%cd%Creset %Cgreen%h%Creset %<(50)%ae %s" \
      -n "$commits" "$branch" -- "$dir" \
      | egrep -i "$reports_team|$events_team"
  elif $reports; then
    # git log --color=always \
    git log \
      --pretty=format:"%C(Yellow)%cd%Creset %Cgreen%h%Creset %<(50)%ae %s" \
      -n "$commits" "$branch" -- "$dir" \
      | egrep -i "$reports_team"
  elif $events; then
    # git log --color=always \
    git log \
      --pretty=format:"%C(Yellow)%cd%Creset %Cgreen%h%Creset %<(50)%ae %s" \
      -n "$commits" "$branch" -- "$dir" \
      | egrep -i "$events_team"
  else
    #git log --color=always \
    git log \
      --pretty=format:"%C(Yellow)%cd%Creset %Cred%h%Creset %Cgreen%<(50)%ae%Creset %s" \
      -n "$commits" "$branch" -- "$dir"
  fi
}

# repo for dotfiles
# https://www.atlassian.com/git/tutorials/dotfiles
alias cgit='/usr/bin/git --git-dir=$HOME/1-config/ --work-tree=$HOME'

#Directories
alias cdsdm="cd $HOME/0-workspace/sdmain/"
alias cdnv="cd $HOME/.config/nvim"

