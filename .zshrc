# Source ~/.commonrc
[ -f "$HOME/.commonrc" ] && source "$HOME/.commonrc"

# https://rubrik.atlassian.net/wiki/spaces/SPARK/pages/2284716096/M1+MacBooks
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
# eval "$(pyenv init --path)"

# Switch to an arm64e shell by default
if [ `machine` != arm64e ]; then
    exec arch -arm64 zsh
fi

# if [ -f $HOME/.bash_aliases ]; then
#     . $HOME/.bash_aliases
# fi

#Aliases
alias lln="ssh -AX ubuntu@aaron-mani-l01.colo.rubrik.com"
