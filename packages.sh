#!/bin/bash

set -ouex pipefail

dnf install -y fuse selinux-policy git distrobox neovim emacs

dnf install -y @"KDE Plasma Workspaces"
systemctl enable sddm.service
