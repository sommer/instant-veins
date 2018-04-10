#!/bin/bash
set -exu

echo '=> checking SHA1 sums'
(cd files; shasum --algorithm 1 --check SHA1SUMS)

echo '=> attempting to auto-determine git version'
SET_VERSION_A=
SET_VERSION_B=
VERSION=$(git describe --tags --match 'instant-veins-*' --always HEAD | sed -e 's/^instant-veins-//' || echo -ne '')
if test -n ${VERSION}; then
	SET_VERSION_A="-var"
	SET_VERSION_B="version=${VERSION}"
fi

packer build ${SET_VERSION_A} ${SET_VERSION_B} -on-error=ask instant-veins.json
