# plasma-lts

PKGBUILD for KDE Plasma LTS on Arch Linux

## Overview

This package provides a Long-Term Support version of KDE Plasma desktop for Arch Linux.

**Note:** As of May 2025, KDE officially discontinued separate LTS releases. However, this package tracks the most stable point releases for users requiring extended stability.

## Current Version

- Plasma: 6.6.3 (LTS track)

## Installation

### Using yay/paru (AUR helper)

```bash
yay -S plasma-lts
```

### Manual build

```bash
git clone https://gitlab.acreetionos.org/natalie/plasma-lts.git
cd plasma-lts
makepkg -si
```

## Package Contents

- `plasma-lts-meta` - Meta package for full LTS desktop
- `plasma-lts` - Core Plasma LTS dependencies

## Why Plasma LTS?

- Extended bugfix support period
- Less frequent major updates
- Better stability for production environments

## Version Policy

This package tracks the latest stable point release within a major version series. Once a new major version is released, the package will be updated to track that version after thorough testing.
