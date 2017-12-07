KUBE_VERSION=$(shell curl -L https://dl.k8s.io/release/stable.txt)
KUBE_ARCH=amd64

ifndef VERBOSE
	MAKEFLAGS += --no-print-directory
endif

targets = kubectl kube-apiserver kube-controller-manager kube-scheduler kubelet kube-proxy kubeadm kubefed kubernetes-test
prep-targets = prep-kubectl-snap prep-kubefed-snap

build = ./build-scripts/build
prep-build = ./build-scripts/prep-build

.PHONY: $(targets) $(prep-targets)

default:
	@KUBE_VERSION=${KUBE_VERSION} KUBE_ARCH="${KUBE_ARCH}" ${build} $(targets)

clean:
	@rm -rf build

prep-kubectl-snap:
	@KUBE_VERSION=${KUBE_VERSION} ${prep-build} kubectl

prep-kubefed-snap:
	@KUBE_VERSION=${KUBE_VERSION} ${prep-build} kubefed

kubectl:
	@KUBE_VERSION=${KUBE_VERSION} KUBE_ARCH="${KUBE_ARCH}" ${build} kubectl

kubeadm:
	@KUBE_VERSION=${KUBE_VERSION} KUBE_ARCH="${KUBE_ARCH}" ${build} kubeadm

kubefed:
	@KUBE_VERSION=${KUBE_VERSION} KUBE_ARCH="${KUBE_ARCH}" ${build} kubefed

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
