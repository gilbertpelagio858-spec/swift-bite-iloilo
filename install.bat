@echo off
title Swift Bite Iloilo - INSTALL
echo ============================================
echo  Swift Bite Iloilo - Lesson 2 Installer
echo ============================================
echo [1/4] Checking Node.js...
node --version > logs\install.log 2>&1
if %errorlevel% neq 0 ( echo ERROR: Node.js NOT found. Install from https://nodejs.org >> logs\install.log & echo Please install Node.js LTS first! & pause & exit /b 1 )
type logs\install.log
echo [2/4] Checking Git...
git --version >> logs\install.log 2>&1
echo [3/4] Installing libraries / plugins...
echo Installing: vite (dev server) + live-server fallback...
call npm install -g live-server >> logs\install.log 2>&1
call npm install --save-dev vite >> logs\install.log 2>&1
echo [4/4] Done!
echo INSTALL SUCCESS - see logs\install.log
echo Next: double-click run.bat
pause
