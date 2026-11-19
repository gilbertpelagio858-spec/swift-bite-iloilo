@echo off
title Swift Bite Iloilo - RUN
echo Starting Swift Bite Iloilo... > logs\run.log
echo %date% %time% - Server starting >> logs\run.log
echo Opening http://localhost:8000
start http://localhost:8000
python -m http.server 8000 >> logs\run.log 2>&1
if %errorlevel% neq 0 ( npx live-server --port=8000 >> logs\run.log 2>&1 )
pause
