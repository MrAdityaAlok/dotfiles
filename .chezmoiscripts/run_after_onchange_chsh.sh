#!/usr/bin/env bash

set -eufo pipefail

exit 0

if [[ "$SHELL" =~ .*fish$ ]]; then
  exit 0
fi

echo "Changing shell to fish ..."
chsh -s "$(command -v fish)"
