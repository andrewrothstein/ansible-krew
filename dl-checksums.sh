#!/bin/sh
set -e
readonly MIRROR=https://github.com/kubernetes-sigs/krew/releases/download

dl_ver() {
    local ver=$1
    local archive_type=${2:-tar.gz}

    # https://github.com/kubernetes-sigs/krew/releases/download/v0.4.1/krew.tar.gz.sha256
    local url="${MIRROR}/v${ver}/krew.${archive_type}.sha256"
    printf "  # %s\n" $url
    printf "  '%s': sha256:%s\n" $ver $(curl -sSL $url | awk '{print $1}')
}

dl_ver ${1:-0.4.1}
