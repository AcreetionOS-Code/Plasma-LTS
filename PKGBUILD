# Maintainer: Natalie Spiva <natalie@acreetionos.org>
# Contributor: Natalie Spiva <natalie@acreetionos.org>

_plasmaver=6.6
_plastrelease=3

pkgbase=plasma-lts
pkgname=(plasma-lts-meta plasma-lts)
pkgver=${_plasmaver}.${_plastrelease}
pkgrel=1
pkgdesc="KDE Plasma LTS - Long Term Support desktop environment"
arch=(any)
url="https://gitlab.acreetionos.org/natalie/plasma-lts"
license=(LGPL-2.0-or-later)
groups=(kde)
options=(!emptydirs)

depends=(
    bluedevil
    breeze
    breeze-gtk
    discover
    drkonqi
    flatpak-kcm
    kactivitymanagerd
    kde-cli-tools
    kde-gtk-config
    kdecoration
    kdeplasma-addons
    kdesu
    kgamma6
    kglobalacceld
    khelpcenter
    khotkeys
    kinfocenter
    kinit
    kio-extras
    kio-fuse
    kmenuedit
    kscreen
    kscreenlocker
    ksshaskpass
    ksysguard
    ksystemstats
    kwallet-pam
    kwayland-integration
    kwin
    kwrited
    layer-shell-qt
    libkscreen
    libksysguard
    libplasma
    milou
    oxygen
    plasma-browser-integration
    plasma-desktop
    plasma-disks
    plasma-firewall
    plasma-integration
    plasma-meta
    plasma-nm
    plasma-pa
    plasma-sdk
    plasma-systemmonitor
    plasma-workspace
    plasma-workspace-wallpapers
    polkit-kde-agent
    powerdevil
    print-manager
    sddm-kcm
    systemsettings
    user-manager
    xdg-desktop-portal-kde
)

makedepends=(git)

prepare() {
    mkdir -p "${srcdir}/plasma-lts-build"
}

build() {
    return 0
}

check() {
    return 0
}

package_plasma-lts-meta() {
    pkgdesc="KDE Plasma LTS - meta package for full desktop"
    depends=(
        plasma-lts=${pkgver}
    )
    provides=()
    conflicts=(plasma)
    replaces=()
}

package_plasma-lts() {
    pkgdesc="KDE Plasma ${pkgver} LTS - desktop environment"
    depends=(${depends[@]})
    provides=(plasma=${pkgver} plasma-workspace=${pkgver})
    conflicts=(plasma plasma-workspace)
    replaces=()
}
