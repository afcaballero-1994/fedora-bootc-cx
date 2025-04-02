#!/bin/bash

set -ouex pipefail

dnf update -y

dnf install distribution-gpg-keys -y

dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

dnf config-manager setopt fedora-cisco-openh264.enabled=1
