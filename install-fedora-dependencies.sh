#!/bin/bash

echo "sudo dnf install -y audit-libs-devel fuse-devel libbabeltrace-devel libbpf-devel libcap-devel libcap-ng-devel libmnl-devel libnl3-devel newt-devel pciutils-devel xmlto"
sudo dnf install -y audit-libs-devel fuse-devel libbabeltrace-devel libbpf-devel libcap-devel libcap-ng-devel libmnl-devel libnl3-devel newt-devel pciutils-devel xmlto

echo "sudo dnf install -y bpftool gcc-plugin-devel glibc-static perl-generators pesign"
sudo dnf install -y bpftool gcc-plugin-devel glibc-static perl-generators pesign

echo "sudo dnf localinstall ./kernel-headers-uapi-6.5.13-100.fc37.x86_64.rpm"
sudo dnf ./localinstall kernel-headers-uapi-6.5.13-100.fc37.x86_64.rpm

