# shellcheck disable=SC2148,SC1090
# load dot bin
[[ -d "$HOME/.bin" ]] && export PATH="$HOME/.bin:$PATH"
# load node version manager
[[ -d "$HOME/.nvm" ]] && source "$HOME/.nvm/nvm.sh"
# load go version manager
[[ -d "$HOME/.gvm" ]] && source "$HOME/.gvm/scripts/gvm"
