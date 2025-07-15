@echo off
setlocal enabledelayedexpansion

:: Set path to subfolder containing the .png files
set "targetFolder=gfx\news_event_pictures\"

:: Output file
set "output=news_events_gfx.txt"
echo. > "%output%"

:: Loop through .png files in the subfolder
for %%f in (%targetFolder%\*.png) do (
    set "filename=%%~nf"
    echo ^<div data-clipboard-text="GFX_news_event_!filename!" data-search-text="GFX_news_event_!filename!" title="GFX_news_event_!filename!" class="icon dlc-base"^> >> "%output%"
    echo     ^<img loading="lazy" src="gfx\news_event_pictures\!filename!.png" alt="GFX_news_event_!filename!"^> >> "%output%"
    echo ^</div^> >> "%output%"
    echo. >> "%output%"
)

echo Done. Output written to %output%.
pause
