KUBE_VERSION=$(shell curl -L https://dl.k8s.io/release/stable.txt)
KUBE_ARCH=amd64

ifndef VERBOSE
	MAKEFLAGS += --no-print-directory
endif

targets = kubectl kube-apiserver kube-controller-manager kube-scheduler kubelet kube-proxy kubeadm kubernetes-test

build = ./build-scripts/build

.PHONY: $(targets) microk8s

default:
	@KUBE_VERSION=${KUBE_VERSION} KUBE_ARCH="${KUBE_ARCH}" ${build} $(targets)

clean:
	@rm -rf build

microk8s:
	@KUBE_VERSION=${KUBE_VERSION} KUBE_ARCH="${KUBE_ARCH}" ./build-scripts/build-microk8s

kubectl:
	@KUBE_VERSION=${KUBE_VERSION} KUBE_ARCH="${KUBE_ARCH}" ${build} kubectl

kubeadm:
	@KUBE_VERSION=${KUBE_VERSION} KUBE_ARCH="${KUBE_ARCH}" ${build} kubeadm

kube-apiserver:
	@KUBE_VERSION=${KUBE_VERSION} KUBE_ARCH="${KUBE_ARCH}" ${build} kube-apiserver

kube-controller-manager:
	@KUBE_VERSION=${KUBE_VERSION} KUBE_ARCH="${KUBE_ARCH}" ${build} kube-controller-manager

kube-scheduler:
	@KUBE_VERSION=${KUBE_VERSION} KUBE_ARCH="${KUBE_ARCH}" ${build} kube-scheduler

kubelet:
	@KUBE_VERSION=${KUBE_VERSION} KUBE_ARCH="${KUBE_ARCH}" ${build} kubelet

kube-proxy:
	@KUBE_VERSION=${KUBE_VERSION} KUBE_ARCH="${KUBE_ARCH}" ${build} kube-proxy

kubernetes-test:
	@KUBE_VERSION=${KUBE_VERSION} KUBE_ARCH="${KUBE_ARCH}" ${build} kubernetes-test
