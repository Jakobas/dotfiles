export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="af-magic"
ZSH_CUSTOM="$HOME/.dotfiles/oh-my-zsh/plugins"

plugins=(
	"git"
	"zsh_reload"
	"sudo"
	"command-not-found"
	"extract"

	"load-gvm"
	"load-nvm"

	"mac-surge"
	"xtom-network-switch"

	"dot-bin"
)

export LANG="en_US.UTF-8"
export MANPATH="/usr/local/man:$MANPATH"

source "$ZSH/oh-my-zsh.sh"

alias cls="echo -e '\0033\0143' && clear"
