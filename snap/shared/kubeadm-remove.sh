#!/bin/sh
set -eu

systemctl stop kubelet.service
systemctl disable kubelet.service

rm -rf /opt/cni/bin
rm -rf /lib/systemd/system/kubelet.service
rm -rf /etc/systemd/system/kubelet.service.d
