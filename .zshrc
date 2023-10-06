# Path exports
export PATH="/opt/homebrew/opt/curl/bin:/Users/Aaron.Mani/Library/Python/3.8/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.10/libexec/bin:$PATH"
export LLN="ubuntu@aaron-mani-l01.colo.rubrik.com"

# https://rubrik.atlassian.net/wiki/spaces/SPARK/pages/2284716096/M1+MacBooks
eval "$(pyenv init --path)"

# Switch to an arm64e shell by default
if [ `machine` != arm64e ]; then
    exec arch -arm64 zsh
fi

if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

alias lln="ssh -AX ubuntu@aaron-mani-l01.colo.rubrik.com"
