#!/usr/bin/env bash

set -eufo pipefail

if [[ "$SHELL" =~ .*fish$ ]]; then
  exit 0
fi

echo "Changing shell to fish ..."
chsh -s "$(command -v fish)"
