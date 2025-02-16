#!/usr/bin/env fish

echo "Installing fisher and other plugins ..."
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

