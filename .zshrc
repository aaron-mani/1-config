# Source ~/.commonrc
if [ -f "$HOME/.commonrc" ]; then
  source "$HOME/.commonrc"
fi

# https://rubrik.atlassian.net/wiki/spaces/SPARK/pages/2284716096/M1+MacBooks
# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init - zsh)"
# eval "$(pyenv init --path)"
export PATH="$HOME/.local/bin:$PATH"
