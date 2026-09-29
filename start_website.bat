@echo off
title A1 Studio - Local Server
echo ========================================================
echo   Starting A1 Studio Website Locally
echo ========================================================
echo.

where python >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo Python detected. Launching local web server on port 8000...
    start http://localhost:8000
    python -m http.server 8000
) else (
    echo Python not found. Opening index.html directly in your default browser...
    start index.html
)
pause
