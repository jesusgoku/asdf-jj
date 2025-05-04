#!/usr/bin/env bash
set -eu
[ "${BASH_VERSINFO[0]}" -ge 3 ] && set -o pipefail

get_platform() {
	local silent=${1:-}
	local platform=""

	platform="$(uname | tr '[:upper:]' '[:lower:]')"

	case "$platform" in
	linux)
		platform="unknown-linux-musl"
		[ -z "$silent" ] && msg "Platform '${platform}' supported!"
		;;
	darwin)
		platform="apple-darwin"
		[ -z "$silent" ] && msg "Platform '${platform}' supported!"
		;;
	*)
		fail "Platform '${platform}' not supported!"
		;;
	esac

	printf "%s" "$platform"
}

get_arch() {
	local arch arch_check

	arch=""
	arch_check=$(uname -m)

	case "${arch_check}" in
	x86_64 | amd64) arch="x86_64" ;;
	aarch64 | arm64) arch="aarch64" ;;
	*)
		fail "Arch '${arch_check}' not supported!"
		;;
	esac

	printf "%s" "$arch"
}

msg() {
	echo -e "\033[32m$1\033[39m" >&2
}

err() {
	echo -e "\033[31m$1\033[39m" >&2
}

fail() {
	err "$1"
	exit 1
}
