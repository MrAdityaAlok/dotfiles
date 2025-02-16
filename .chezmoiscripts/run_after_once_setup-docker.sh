#!/usr/bin/env bash

set -eufo pipefail

if ! command -v docker &>/dev/null; then
  exit
fi

echo "Setting up docker ..."

sudo rm "$HOME/.docker/" -rf || true
sudo groupadd docker -f
sudo usermod -aG docker "$USER"

echo "Enabling docker services ..."
sudo systemctl enable docker.socket
