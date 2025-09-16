#!/usr/bin/env bash
set -e

echo ">>> Installing Flutter SDK"
FLUTTER_VERSION=3.22.2
curl -L https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz -o /tmp/flutter.tar.xz
mkdir -p /tmp/flutter-sdk
tar -xf /tmp/flutter.tar.xz -C /tmp/flutter-sdk
export PATH="/tmp/flutter-sdk/flutter/bin:$PATH"
flutter --version

echo ">>> Pub get"
flutter pub get

echo ">>> Building Flutter Web"
flutter build web --release

echo ">>> Build completed. Output in build/web"
