# shellcheck disable=SC2148,SC1090
add_bin_path() {
	[[ -d "$1" ]] && export PATH="$1:$PATH"
}

load_env() {
	[[ -f "$1" ]] && source "$1"
}

add_bin_path "/usr/local/sbin"
add_bin_path "$HOME/.bin"
load_env "$HOME/.nvm/nvm.sh"
load_env "$HOME/.gvm/scripts/gvm"
load_env "/usr/local/bin/virtualenvwrapper.sh"

unset -f add_bin_path
unset -f load_env
