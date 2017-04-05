# shellcheck disable=SC2148
xtom-network-switch() {
	local -r host='10.233.0.1:10086/api'
	local MODE_NAME
	case "$1" in
		tel)
			MODE_NAME='50'
			;;
		uni)
			MODE_NAME='100'
			;;
		cls)
			MODE_NAME='clear_settings'
			;;
		*)
			echo "usage: $0 {tel,uni,cls}\n"
			curl "$host/status"
			return
			;;
	esac
	curl "$host/switch" -X POST -F "mode_name=$MODE_NAME"
}
