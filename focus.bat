@echo off
setlocal enabledelayedexpansion

:: Set path to subfolder containing the .png files
set "targetFolder=gfx\interface\goals"

:: Output file
set "output=focus_gfx.txt"
echo. > "%output%"

:: Loop through .png files in the subfolder
for %%f in (%targetFolder%\*.png) do (
    set "filename=%%~nf"
    echo ^<div data-clipboard-text="GFX_goal_!filename!" data-search-text="GFX_goal_!filename!" title="GFX_goal_!filename!" class="icon dlc-base"^> >> "%output%"
    echo     ^<img loading="lazy" src="gfx\interface\goals\!filename!.png" alt="GFX_goal_!filename!"^> >> "%output%"
    echo ^</div^> >> "%output%"
    echo. >> "%output%"
)

echo Done. Output written to %output%.
pause
