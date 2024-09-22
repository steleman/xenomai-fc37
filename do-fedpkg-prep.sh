#!/bin/bash

export HERE="`pwd`"
export REDHAT="${HERE}/kernel-6.5.13/linux-6.5.13-300.fc37.x86_64"
export FLAVOR="fedora"
export FEDPKG_PREP_LOG="${HERE}/fedpkg-prep.log"

echo "fedpkg --release f37 prep > ${FEDPKG_PREP_LOG}"
fedpkg --release f37 prep > ${FEDPKG_PREP_LOG} 2>&1
ret=$?
echo "fedpkg prep exited with status $ret."


