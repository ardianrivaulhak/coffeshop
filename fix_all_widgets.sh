#!/bin/bash

echo "Fixing all widget files..."

# Process each widget file
for file in lib/widgets/*.dart; do
    if [ -f "$file" ]; then
        echo "Processing: $file"
        
        # Remove google_fonts import
        sed -i "/import 'package:google_fonts\/google_fonts.dart';/d" "$file"
        
        # Replace GoogleFonts.pacifico( with const TextStyle(
        sed -i 's/GoogleFonts\.pacifico(/const TextStyle(/g' "$file"
        
        # Replace GoogleFonts.poppins( with const TextStyle(
        sed -i 's/GoogleFonts\.poppins(/const TextStyle(/g' "$file"
        
        echo "✓ Fixed: $file"
    fi
done

echo ""
echo "All widget files fixed!"
echo ""
echo "Now run:"
echo "  flutter clean"
echo "  flutter pub get"
echo "  flutter run -d chrome"
