#!/bin/bash

set -ouex pipefail

dnf install -y fuse selinux-policy git distrobox neovim emacs ffmpeg

dnf group install -y kde-desktop
systemctl enable sddm.service
