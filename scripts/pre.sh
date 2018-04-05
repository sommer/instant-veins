#!/bin/bash

set -exu

echo "==> Install Ansible"
apt -y update
apt -y install ansible

echo "==> Add user veins to sudoers"
echo "veins        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers

echo "==> Create directories to hold uploaded files"
mkdir -p ~veins/src; chown veins:veins ~veins/src
mkdir -p ~veins/Documents; chown veins:veins ~veins/Documents
