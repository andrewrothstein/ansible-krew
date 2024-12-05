#!/bin/sh
set -e
readonly MIRROR=https://github.com/kubernetes-sigs/krew/releases/download

dlver() {
    local ver=$1
    local os=$2
    local arch=$3
    local archive_type=${4:-tar.gz}
    local platform="${os}"_${arch}
    # https://github.com/kubernetes-sigs/krew/releases/download/v0.4.2/krew-linux_amd64.tar.gz.sha256
    local url="${MIRROR}/v${ver}/krew-${platform}.${archive_type}.sha256"
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(curl -sSL $url)

}

dl() {
    local ver=$1
    printf "  '%s':\n" $ver
    dlver $ver darwin amd64
    dlver $ver darwin arm64
    dlver $ver linux amd64
    dlver $ver linux arm
    dlver $ver linux arm64
    dlver $ver windows amd64
}

dl ${1:-0.4.4}
