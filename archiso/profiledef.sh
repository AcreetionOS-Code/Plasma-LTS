#!/usr/bin/env bash
# shellcheck disable=SC2034

# =============================================================================
# AcreetionOS Live - Profile Definition
# =============================================================================
# Copyright (c) 2026 Natalie Spiva for AcreetionOS
# Author: Natalie Spiva <natalie@acreetionos.org>
# GPG Key: 1DD93EDCFFF0B9578A411AE8EEC627F9059B962C
# License: LGPL-2.0-or-later
#
# This profile builds a live ISO of AcreetionOS featuring KDE Plasma LTS
# =============================================================================

iso_name="acreetionos-lts"
iso_label="ACREETIONOS_LTS_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="AcreetionOS <https://acreetionos.org>"
iso_application="AcreetionOS Live (Plasma LTS)"
iso_version="6.6.3-$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="acreetionos"
buildmodes=('iso')
bootmodes=('bios.syslinux'
           'uefi.systemd-boot')
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/ace-installer"]="0:0:755"
)
