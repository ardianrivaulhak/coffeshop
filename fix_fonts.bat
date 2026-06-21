@echo off
setlocal enabledelayedexpansion

set "search1=import 'package:google_fonts/google_fonts.dart';"
set "replace1=import '../utils/text_styles.dart';"

set "search2=GoogleFonts.pacifico"
set "replace2=AppTextStyles.pacifico"

set "search3=GoogleFonts.poppins"
set "replace3=AppTextStyles.poppins"

for %%F in (lib\widgets\*.dart) do (
    echo Processing %%F...
    powershell -Command "(Get-Content '%%F') -replace 'import ''package:google_fonts/google_fonts.dart'';', 'import ''../utils/text_styles.dart'';' -replace 'GoogleFonts\.pacifico', 'AppTextStyles.pacifico' -replace 'GoogleFonts\.poppins', 'AppTextStyles.poppins' | Set-Content '%%F'"
)

echo Done!
