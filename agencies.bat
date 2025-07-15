@echo off
setlocal enabledelayedexpansion

:: Set path to subfolder containing the .png files
set "targetFolder=gfx\interface\operatives\agencies"

:: Output file
set "output=agencies_gfx.txt"
echo. > "%output%"

:: Loop through .png files in the subfolder
for %%f in (%targetFolder%\*.png) do (
    set "filename=%%~nf"
    echo ^<div data-clipboard-text="GFX_intelligence_agency_logo_!filename!" data-search-text="GFX_intelligence_agency_logo_!filename!" title="GFX_intelligence_agency_logo_!filename!" class="icon dlc-base"^> >> "%output%"
    echo     ^<img loading="lazy" src="gfx\interface\operatives\agencies\!filename!.png" alt="GFX_intelligence_agency_logo_!filename!"^> >> "%output%"
    echo ^</div^> >> "%output%"
    echo. >> "%output%"
)

echo Done. Output written to %output%.
pause
