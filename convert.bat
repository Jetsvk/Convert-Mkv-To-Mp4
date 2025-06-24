@echo off
cd /d D:\FFmpeg\convertfull

for %%F in (*.mkv) do (
    echo Converting %%F ...
    ffmpeg -i "%%F" -codec copy "%%~nF.mp4"
    
    if exist "%%~nF.mp4" (
        echo Conversion successful, deleting %%F
        del "%%F"
    ) else (
        echo Conversion failed for %%F, skipping deletion
    )
)

echo All done!
pause
