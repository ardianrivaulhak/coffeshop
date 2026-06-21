#!/bin/bash

echo "Removing GoogleFonts from widget files..."

files=(
    "lib/widgets/about_section.dart"
    "lib/widgets/menu_section.dart"
    "lib/widgets/gallery_section.dart"
    "lib/widgets/footer_section.dart"
)

for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "Processing $file..."
        
        # Remove the google_fonts import
        sed -i "s|import 'package:google_fonts/google_fonts.dart';||g" "$file"
        
        # Replace GoogleFonts.pacifico with TextStyle
        sed -i 's/GoogleFonts\.pacifico(/const TextStyle(/g' "$file"
        
        # Replace GoogleFonts.poppins with TextStyle
        sed -i 's/GoogleFonts\.poppins(/const TextStyle(/g' "$file"
        
        echo "✓ Done: $file"
    else
        echo "✗ File not found: $file"
    fi
done

echo ""
echo "All done! Now run: flutter run -d chrome"
