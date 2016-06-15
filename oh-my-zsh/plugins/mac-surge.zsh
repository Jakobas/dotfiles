if [[ "$(uname)" != 'Darwin' ]]; then
	return
fi

surge-enable() {
	local -r proxy="http://127.0.0.1:6152"
	export http_proxy="$proxy"
	export https_proxy="$proxy"
}

surge-disable() {
	unset http_proxy
	unset https_proxy
}

surge-status() {
	echo "HTTP_PROXY : $http_proxy"
	echo "HTTPS_PROXY: $https_proxy"
}
