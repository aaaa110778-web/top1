#!/usr/bin/env bash
set -e

# Install deps
sudo apt-get update
sudo apt-get install -y curl unzip xz-utils git ca-certificates libglu1-mesa

# Install Flutter SDK (stable)
FLUTTER_VERSION=3.22.2
curl -L "https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz" -o /tmp/flutter.tar.xz
sudo mkdir -p /opt/flutter
sudo tar -xf /tmp/flutter.tar.xz -C /opt/flutter
echo 'export PATH="/opt/flutter/flutter/bin:$PATH"' >> ~/.bashrc
export PATH="/opt/flutter/flutter/bin:$PATH"

# Flutter setup
flutter --version
flutter config --enable-web
flutter pub get || true

echo "✅ Flutter ready. Run: flutter run -d web-server --web-port 8080"
