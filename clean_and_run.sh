#!/bin/bash

echo "Deep cleaning Flutter cache..."

# Remove all cache directories
rm -rf .dart_tool
rm -rf build
rm -rf .flutter-plugins-dependencies
rm -rf ios/Flutter/ephemeral
rm -rf android/.gradle

echo "✓ Cache cleared"
echo ""
echo "Running flutter pub get..."
flutter pub get

echo ""
echo "Starting app on Chrome..."
flutter run -d chrome
