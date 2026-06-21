#!/bin/bash

echo "FORCE FIXING ALL FILES - Using cat and grep"
echo "==========================================="

# Fix about_section.dart
echo "Fixing about_section.dart..."
grep -v "text_styles" lib/widgets/about_section.dart | \
    sed 's/AppTextStyles\.pacifico/const TextStyle/g' | \
    sed 's/AppTextStyles\.poppins/const TextStyle/g' > lib/widgets/about_section_temp.dart
mv lib/widgets/about_section_temp.dart lib/widgets/about_section.dart
echo "✓ about_section.dart"

# Fix menu_section.dart
echo "Fixing menu_section.dart..."
grep -v "text_styles" lib/widgets/menu_section.dart | \
    sed 's/AppTextStyles\.pacifico/const TextStyle/g' | \
    sed 's/AppTextStyles\.poppins/const TextStyle/g' > lib/widgets/menu_section_temp.dart
mv lib/widgets/menu_section_temp.dart lib/widgets/menu_section.dart
echo "✓ menu_section.dart"

# Fix gallery_section.dart
echo "Fixing gallery_section.dart..."
grep -v "text_styles" lib/widgets/gallery_section.dart | \
    sed 's/AppTextStyles\.pacifico/const TextStyle/g' | \
    sed 's/AppTextStyles\.poppins/const TextStyle/g' > lib/widgets/gallery_section_temp.dart
mv lib/widgets/gallery_section_temp.dart lib/widgets/gallery_section.dart
echo "✓ gallery_section.dart"

# Fix footer_section.dart
echo "Fixing footer_section.dart..."
grep -v "text_styles" lib/widgets/footer_section.dart | \
    sed 's/AppTextStyles\.pacifico/const TextStyle/g' | \
    sed 's/AppTextStyles\.poppins/const TextStyle/g' > lib/widgets/footer_section_temp.dart
mv lib/widgets/footer_section_temp.dart lib/widgets/footer_section.dart
echo "✓ footer_section.dart"

echo ""
echo "Verifying first file..."
head -5 lib/widgets/about_section.dart

echo ""
echo "Cleaning build..."
rm -rf .dart_tool build .flutter-plugins-dependencies

echo ""
echo "Getting dependencies..."
flutter pub get

echo ""
echo "==========================================="
echo "DONE! Now run: flutter run -d chrome"
echo "==========================================="
