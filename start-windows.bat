@echo off
chcp 65001 >nul
cd /d "%~dp0"
title DADASHMODE v4
where node >nul 2>nul && (start "" http://localhost:8080 & node tools\serve.mjs 8080 & goto :eof)
echo.
echo  Node.js is not installed. The app will open, but the no-key female voice (Dilara) and saving voices into the voices folder need Node.js.
echo  Install Node.js LTS from https://nodejs.org and run this file again.
echo.
where python >nul 2>nul && (start "" http://localhost:8080 & python -m http.server 8080 & goto :eof)
pause
