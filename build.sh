#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
rpm-ostree install kernel-headers kernel-devel dkms elfutils-libelf-devel qt5-qtx11extras tilix flameshot ulauncher zsh numix-icon-theme-circle cockpit cockpit-machines '@virtualization' podman git sublime-text ffmpeg-libs

#### Example for enabling a System Unit File

systemctl enable podman.socket cockpit.socket libvirtd
