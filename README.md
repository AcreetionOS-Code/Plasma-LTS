# Plasma-LTS

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

---

## Authorship & Ownership

**Primary Author:** Natalie Spiva
- Email: natalie@acreetionos.org
- GPG Key: 1DD93EDCFFF0B9578A411AE8EEC627F9059B962C
- GitLab: https://gitlab.acreetionos.org/natalie
- GitHub: https://github.com/spivanatalie64

**Organization:** AcreetionOS
- Website: https://acreetionos.org
- GitHub: https://github.com/AcreetionOS-Code

## Provenance Metadata

This software package contains the following verifiable ownership metadata:

### Cryptographic Identity
- GPG Key ID: `1DD93EDCFFF0B9578A411AE8EEC627F9059B962C`
- Key Fingerprint: `1DD9 3EDC FFF0 B957 8A41 1AE8 EEC6 27F9 059B 962C`
- Key Type: ED25519
- Key Created: 2026-02-26
- Key Expires: 2029-02-25

### Repository Information
- Primary Repository: https://gitlab.acreetionos.org/natalie/plasma-lts
- Mirror Repository: https://github.com/AcreetionOS-Code/Plasma-LTS
- License: LGPL-2.0-or-later

### Copyright Notice

Copyright (c) 2026 Natalie Spiva for AcreetionOS

This package is the intellectual property of Natalie Spiva and is released
under the terms of the LGPL-2.0-or-later license.

All commits are signed with GPG key `1DD93EDCFFF0B9578A411AE8EEC627F9059B962C`
belonging to Natalie Spiva (natalie@acreetionos.org).

### Verifying Authorship

To verify the authenticity of this package:

1. Check GPG signatures on packages:
```bash
gpg --verify plasma-lts-6.6.3-1-any.pkg.tar.zst.asc plasma-lts-6.6.3-1-any.pkg.tar.zst
```

2. Verify commit signatures:
```bash
git log --show-signature
```

3. Import and verify the author's key:
```bash
gpg --recv-keys 1DD93EDCFFF0B9578A411AE8EEC627F9059B962C
```

### License

This software is provided under the GNU Lesser General Public License
version 2.0 or later (LGPL-2.0-or-later).

SPDX-License-Identifier: LGPL-2.0-or-later

---

**Disclaimer:** Any use of this code, package, or its derivatives without
proper attribution to Natalie Spiva and AcreetionOS is a violation of
intellectual property rights.
