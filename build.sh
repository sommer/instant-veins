#!/bin/bash
set -exu

(cd files; shasum --algorithm 1 --check SHA1SUMS)

packer build -on-error=ask instant-veins.json
