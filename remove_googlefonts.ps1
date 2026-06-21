$files = @(
    "lib\widgets\about_section.dart",
    "lib\widgets\menu_section.dart",
    "lib\widgets\gallery_section.dart",
    "lib\widgets\footer_section.dart"
)

foreach ($file in $files) {
    if (Test-Path $file) {
        Write-Host "Processing $file..."
        $content = Get-Content $file -Raw
        
        # Remove import
        $content = $content -replace "import 'package:google_fonts/google_fonts\.dart';\s*", ""
        
        # Replace GoogleFonts.pacifico(...) with TextStyle(...)
        $content = $content -replace "GoogleFonts\.pacifico\(", "const TextStyle("
        
        # Replace GoogleFonts.poppins(...) with TextStyle(...)
        $content = $content -replace "GoogleFonts\.poppins\(", "const TextStyle("
        
        Set-Content $file $content -NoNewline
        Write-Host "✓ Done: $file"
    }
}

Write-Host "All files processed!"
