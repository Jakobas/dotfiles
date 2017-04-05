# shellcheck disable=SC2148,SC1090
# set brew bin path
[[ -d "/usr/local/sbin" ]] && export PATH="/usr/local/sbin:$PATH"
# set dot bin path
[[ -d "$HOME/.bin" ]] && export PATH="$HOME/.bin:$PATH"
# load node version manager
[[ -d "$HOME/.nvm" ]] && source "$HOME/.nvm/nvm.sh"
# load go version manager
[[ -d "$HOME/.gvm" ]] && source "$HOME/.gvm/scripts/gvm"
