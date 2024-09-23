#!/bin/bash

if [ `id -u` -ne 0 ] ; then
  echo "You must be root to do this."
  exit 1
fi

for file in \
  ./kernel-6.5.13-300.xenomai.fc37.src.rpm \
  ./kernel-core-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-modules-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-modules-core-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-modules-extra-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-modules-internal-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-ipaclones-internal-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-tools-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-tools-libs-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-tools-libs-devel-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-devel-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-devel-matched-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-uki-virt-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-headers-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./bpftool-7.3.0-300.xenomai.fc37.x86_64.rpm \
  ./perf-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./python3-perf-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./rtla-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./rv-6.5.13-300.xenomai.fc37.x86_64.rpm
do
  if [ ! -f ${file} ] ; then
    echo "RPM ${file} does not exist."
    exit 1
  fi
done

dnf localinstall \
  ./kernel-core-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-modules-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-modules-core-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-modules-extra-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-modules-internal-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-ipaclones-internal-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-tools-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-tools-libs-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-tools-libs-devel-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-devel-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-devel-matched-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-uki-virt-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./kernel-headers-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./bpftool-7.3.0-300.xenomai.fc37.x86_64.rpm \
  ./perf-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./python3-perf-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./rtla-6.5.13-300.xenomai.fc37.x86_64.rpm \
  ./rv-6.5.13-300.xenomai.fc37.x86_64.rpm

rpm -ivh ./kernel-6.5.13-300.xenomai.fc37.src.rpm
echo "Done."

