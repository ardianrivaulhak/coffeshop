import os
import re

def replace_in_file(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Replace imports
    content = content.replace(
        "import 'package:google_fonts/google_fonts.dart';",
        "import '../utils/text_styles.dart';"
    )
    
    # Replace GoogleFonts calls
    content = content.replace('GoogleFonts.pacifico', 'AppTextStyles.pacifico')
    content = content.replace('GoogleFonts.poppins', 'AppTextStyles.poppins')
    
    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(content)
    
    print(f"Updated: {filepath}")

# Update all widget files
widgets = [
    'lib/widgets/hero_section.dart',
    'lib/widgets/about_section.dart',
    'lib/widgets/menu_section.dart',
    'lib/widgets/gallery_section.dart',
    'lib/widgets/footer_section.dart',
]

for widget in widgets:
    if os.path.exists(widget):
        replace_in_file(widget)

print("Done!")
