@echo off
setlocal
cd /d "%~dp0"
echo Checking Python...
py --version
echo.
echo Checking project files...
if exist api\server.py (echo OK: api\server.py) else (echo MISSING: api\server.py)
if exist public\index.html (echo OK: public\index.html) else (echo MISSING: public\index.html)
if exist .env (echo OK: .env) else (echo MISSING: .env)
echo.
echo Starting a quick server test...
call ".venv\Scripts\activate.bat" 2>nul
python api\server.py
pause
