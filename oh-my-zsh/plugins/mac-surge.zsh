if [[ "$(uname)" != 'Darwin' ]]; then
	return
fi

surge() {
	local -r proxy="http://127.0.0.1:6152"
	case "$1" in
		on)
			export http_proxy="$proxy"
			export https_proxy="$proxy"
			echo "set HTTP_PROXY, HTTPS_PROXY done"
			;;
		off)
			unset http_proxy
			unset https_proxy
			echo "unset HTTP_PROXY, HTTPS_PROXY done"
			;;
		echo)
			echo "http_proxy=$http_proxy"
			echo "https_proxy=$https_proxy"
			;;
		*)
			if [[ "$proxy" == "$http_proxy" ]] && [[ "$proxy" == "$https_proxy" ]]; then
				echo "status: on\n"
			else
				echo "status: off\n"
			fi
			echo "usage: $0 {on,off,echo}"
			;;
	esac
}
