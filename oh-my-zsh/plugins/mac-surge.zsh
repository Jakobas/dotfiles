# shellcheck disable=SC2148
if [[ $OSTYPE != darwin* ]]; then
	return
fi

surge() {
	local -r proxy="http://127.0.0.1:6152"
	case "$1" in
		set)
			export http_proxy="$proxy"
			export https_proxy="$proxy"
			echo "set HTTP_PROXY, HTTPS_PROXY done"
			;;
		unset)
			unset http_proxy
			unset https_proxy
			echo "unset HTTP_PROXY, HTTPS_PROXY done"
			;;
		echo)
			echo "http_proxy=$http_proxy"
			echo "https_proxy=$https_proxy"
			;;
		status)
			[[ "$proxy" == "$http_proxy" && "$proxy" == "$https_proxy" ]] && echo 'set' || echo 'unset'
			;;
		*)
			printf "status: %s\n" "$($0 status)"
			echo "usage: $0 {set,unset,echo}"
			;;
	esac
}

_surge() {
	local -r commands=('set' 'unset' 'echo')
	compset -P '*,'
	compadd -S '' "${commands[@]}"
}

compdef '_surge' 'surge'
