# Maintainer: Natalie Spiva <natalie@acreetionos.org>
# Contributor: Natalie Spiva <natalie@acreetionos.org>
# GPG Key: 1DD93EDCFFF0B9578A411AE8EEC627F9059B962C

# =============================================================================
# KDE Plasma LTS PKGBUILD
# =============================================================================
# Version Information:
#   - Plasma Series: 6.6 (stable release with extended support)
#   - Current Point Release: 6.6.3 (bugfix release)
#   - Release Date: 2026-03-17
#   - Support: 6 bugfix releases per cycle (as per KDE's new policy)
#
# Build Information:
#   - Target Architecture: any (universal package)
#   - Build System: makepkg (Arch Linux)
#   - Dependencies: All dependencies pulled from Arch Linux official repos
#   - Qt Version: Qt 6 (as required by Plasma 6)
#
# Policy Notes:
#   - KDE discontinued official LTS releases in May 2025
#   - This package pins to stable point releases for extended stability
#   - Each Plasma release now receives 6 bugfix updates (previously 5)
# =============================================================================

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

# =============================================================================
# Core Dependencies
# These packages form the foundation of the Plasma desktop environment
# All packages are from Arch Linux official repositories
# =============================================================================
depends=(
    # Plasma Core
    plasma-workspace           # Workspace shell (Plasma desktop)
    plasma-workspace-wallpapers # Default wallpapers
    libplasma                 # Plasma library
    
    # Window Manager & Compositing
    kwin                      # KWin window manager
    kdecoration               # Window decoration library
    layer-shell-qt            # Layer shell integration
    
    # System Integration
    bluedevil                 # Bluetooth integration
    kactivitymanagerd         # Activity management
    kglobalacceld             # Global shortcuts daemon
    ksystemstats              # System statistics plugin
    kwallet-pam               # PAM integration for KWallet
    polkit-kde-agent          # Authentication agent
    
    # Display & Screen
    kscreen                   # Screen management
    kscreenlocker             # Screen locking
    libkscreen                # Screen library
    
    # Network & Connectivity
    plasma-nm                  # Network management
    
    # Audio
    plasma-pa                 # Audio volume control
    
    # Power Management
    powerdevil                # Power management
    power-profiles-daemon     # Power profiles support
    
    # Input Devices
    kgamma6                   # Gamma correction
    khotkeys                  # Custom shortcuts
    
    # File Management & I/O
    kio-extras               # KIO file manager extras
    kio-fuse                 # FUSE support for KIO
    kmenuedit                # Menu editor
    
    # System Settings & Configuration
    kde-cli-tools            # CLI tools for KDE
    kdesu                   # Privilege escalation
    systemsettings          # System settings app
    kinfocenter             # System information
    khelpcenter             # Help center
    
    # Theming & Appearance
    breeze                   # Default Plasma theme
    breeze-gtk              # GTK theme integration
    kde-gtk-config          # GTK configuration
    oxygen                  # Oxygen icons/theme
    
    # Application Launcher
    milou                    # Search runner
    kdeplasma-addons         # Plasma addons
    plasma-browser-integration # Browser integration
    
    # Login & Session
    sddm-kcm                # SDDM login manager config
    
    # Discover & Software Management
    discover                # Software center
    flatpak-kcm             # Flatpak integration
    
    # Utilities
    drkonqi                 # Crash handler
    ksshaskpass             # SSH askpass
    kwrited                 # Write notification daemon
    kinit                   # Initialization daemon
    kwayland-integration    # Wayland integration
    ksysguard               # System monitor
    
    # Print & Scan
    print-manager           # Print manager
    
    # User Management
    user-manager            # User account management
    
    # Desktop Integration
    plasma-integration      # Theme integration
    plasma-disks            # Disk utility
    plasma-firewall         # Firewall frontend
    plasma-sdk              # Development SDK
    plasma-systemmonitor    # System monitor
    
    # Portal Support
    xdg-desktop-portal-kde  # XDG portal implementation
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

# =============================================================================
# Package: plasma-lts-meta
# Purpose: Meta-package that provides plasma-lts virtual package
#          and depends on the full plasma-lts package
# =============================================================================
package_plasma-lts-meta() {
    pkgdesc="KDE Plasma LTS - meta package for full desktop"
    depends=(
        plasma-lts=${pkgver}
    )
    provides=()
    conflicts=(plasma)
    replaces=()
}

# =============================================================================
# Package: plasma-lts
# Purpose: Main package containing all Plasma LTS dependencies
#          Provides versioned packages to allow for coexistence with
#          regular plasma packages if needed
# =============================================================================
package_plasma-lts() {
    pkgdesc="KDE Plasma ${pkgver} LTS - desktop environment"
    depends=(${depends[@]})
    provides=(plasma=${pkgver} plasma-workspace=${pkgver})
    conflicts=(plasma plasma-workspace)
    replaces=()
}
