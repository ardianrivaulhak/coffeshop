#!/bin/bash

echo "================================"
echo "FINAL FIX - Removing all AppTextStyles references"
echo "================================"

# List of files to fix
files=(
    "lib/widgets/about_section.dart"
    "lib/widgets/menu_section.dart"
    "lib/widgets/gallery_section.dart"
    "lib/widgets/footer_section.dart"
)

for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "Processing: $file"
        
        # Remove line with text_styles import
        sed -i "/import.*text_styles/d" "$file"
        
        # Replace AppTextStyles.pacifico with const TextStyle
        sed -i "s/AppTextStyles\.pacifico/const TextStyle/g" "$file"
        
        # Replace AppTextStyles.poppins with const TextStyle
        sed -i "s/AppTextStyles\.poppins/const TextStyle/g" "$file"
        
        echo "  ✓ Fixed: $file"
    else
        echo "  ✗ Not found: $file"
    fi
done

echo ""
echo "================================"
echo "CLEANING BUILD CACHE"
echo "================================"

# Deep clean
rm -rf .dart_tool
rm -rf build
rm -f .flutter-plugins-dependencies

echo "✓ Cache cleaned"
echo ""
echo "================================"
echo "GETTING DEPENDENCIES"
echo "================================"

flutter pub get

echo ""
echo "================================"
echo "ALL DONE! Now run:"
echo "  flutter run -d chrome"
echo "================================"
