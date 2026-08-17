@echo off
setlocal
title Mina Study AI V5 Server
cd /d "%~dp0"

echo ==========================================
echo       Mina Study AI V5 - SERVER
echo ==========================================
echo.

if not exist ".venv\Scripts\python.exe" (
  echo [1/3] Creating virtual environment...
  py -m venv .venv
  if errorlevel 1 (
    echo ERROR: Python was not found. Install Python 3.11+ and try again.
    pause
    exit /b 1
  )
)

call ".venv\Scripts\activate.bat"

echo [2/3] Installing required packages...
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
if errorlevel 1 (
  echo.
  echo ERROR: Package installation failed.
  pause
  exit /b 1
)

echo [3/3] Starting Mina Study AI V5...
echo.
echo Open in your browser:
echo http://localhost:3000
echo.
echo Keep this window OPEN while the website is running.
echo Press CTRL+C to stop the server.
echo.
python api\server.py

echo.
echo Server stopped.
pause
