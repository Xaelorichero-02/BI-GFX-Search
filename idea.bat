@echo off
setlocal enabledelayedexpansion

:: Set path to subfolder containing the .png files
set "targetFolder=gfx\interface\ideas"

:: Output file
set "output=idea_gfx.txt"
echo. > "%output%"

:: Loop through .png files in the subfolder
for %%f in (%targetFolder%\*.png) do (
    set "filename=%%~nf"
    echo ^<div data-clipboard-text="!filename!" data-search-text="!filename!" title="!filename!" class="icon dlc-base"^> >> "%output%"
    echo     ^<img loading="lazy" src="gfx\interface\ideas\!filename!.png" alt="!filename!"^> >> "%output%"
    echo ^</div^> >> "%output%"
    echo. >> "%output%"
)

echo Done. Output written to %output%.
pause
