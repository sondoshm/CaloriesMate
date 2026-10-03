@echo off
echo ============================================
echo   Building CalorieMate Pro ...
echo ============================================
where py >nul 2>nul
if %errorlevel%==0 (set PY=py) else (set PY=python)

%PY% -m pip install --upgrade pyinstaller openpyxl
if errorlevel 1 goto :fail

%PY% -m PyInstaller --noconfirm --clean --onedir --windowed --name CalorieMate --icon icon.ico --add-data "icon.ico;." calorie_mate.py
if errorlevel 1 goto :fail

echo.
echo ============================================
echo   DONE!  Your program is in:
echo   dist\CalorieMate\CalorieMate.exe
echo ============================================
pause
exit /b 0

:fail
echo.
echo *** Something went wrong. Copy the message above and send it to Claude. ***
pause
exit /b 1
