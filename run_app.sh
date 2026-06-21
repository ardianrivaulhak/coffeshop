#!/bin/bash

echo "========================================="
echo "  COFFEE SHOP APP - STARTING"
echo "========================================="

echo ""
echo "Cleaning build cache..."
rm -rf .dart_tool build .flutter-plugins-dependencies

echo "Getting dependencies..."
flutter pub get

echo ""
echo "========================================="
echo "  Starting app on Chrome..."
echo "========================================="
flutter run -d chrome
