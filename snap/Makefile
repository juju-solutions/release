KUBE_VERSION=$(shell curl -L https://dl.k8s.io/release/stable.txt)
KUBE_ARCH=amd64

ifndef VERBOSE
	MAKEFLAGS += --no-print-directory
endif

targets = kubectl kube-apiserver kube-controller-manager kube-scheduler kubelet kube-proxy kubeadm kubefed kubernetes-test
prep-targets = prep-kubectl-snap prep-kubefed-snap prep-kube-apiserver-snap prep-kube-controller-manager-snap prep-kube-scheduler-snap prep-kube-proxy-snap prep-kubeadm-snap prep-kubernetes-test-snap

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

prep-kube-apiserver-snap:
	@KUBE_VERSION=${KUBE_VERSION} ${prep-build} kube-apiserver

prep-kube-controller-manager-snap:
	@KUBE_VERSION=${KUBE_VERSION} ${prep-build} kube-controller-manager

prep-kube-scheduler-snap:
	@KUBE_VERSION=${KUBE_VERSION} ${prep-build} kube-scheduler

prep-kubelet-snap:
	@KUBE_VERSION=${KUBE_VERSION} ${prep-build} kubelet

prep-kube-proxy-snap:
	@KUBE_VERSION=${KUBE_VERSION} ${prep-build} kube-proxy

prep-kubeadm-snap:
	@KUBE_VERSION=${KUBE_VERSION} ${prep-build} kubeadm

prep-kubernetes-test-snap:
	@KUBE_VERSION=${KUBE_VERSION} ${prep-build} kubernetes-test

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
