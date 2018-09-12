#!/bin/bash

docker run --rm -v "$PWD":/root/snap -w /root/snap \
       -e SNAPCRAFT_SETUP_CORE=1 \
       -e KUBE_ARCH=amd64 \
       -e KUBE_VERSION=$(curl -L https://dl.k8s.io/release/stable.txt) \
       -v /usr/bin/curl:/usr/bin/curl \
       -v /usr/bin/make:/usr/bin/make \
       snapcore/snapcraft:stable \
       ./build-scripts/build "$@"
