#!/usr/bin/env bash
# =============================================================================
# Build Script for AcreetionOS Live ISO
# =============================================================================
# Copyright (c) 2026 Natalie Spiva for AcreetionOS
# Author: Natalie Spiva <natalie@acreetionos.org>
# GPG Key: 1DD93EDCFFF0B9578A411AE8EEC627F9059B962C
# =============================================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="${SCRIPT_DIR}/archiso-configs/acreetionos-lts"
OUTPUT_DIR="${SCRIPT_DIR}/iso-output"

echo "╔══════════════════════════════════════════════════════════════════════════════╗"
echo "║   Building AcreetionOS Live ISO with KDE Plasma LTS                          ║"
echo "╚══════════════════════════════════════════════════════════════════════════════╝"
echo ""

# Create output directory
mkdir -p "${OUTPUT_DIR}"

# Run mkarchiso
echo "Starting ISO build..."
echo "Output will be at: ${OUTPUT_DIR}"
echo ""

sudo mkarchiso -v -o "${OUTPUT_DIR}" "${CONFIG_DIR}"

echo ""
echo "═══════════════════════════════════════════════════════════════════════════════"
echo "Build complete!"
echo "ISO location: ${OUTPUT_DIR}"
ls -lh "${OUTPUT_DIR}"/*.iso 2>/dev/null || echo "No ISO found"
echo "═══════════════════════════════════════════════════════════════════════════════"
