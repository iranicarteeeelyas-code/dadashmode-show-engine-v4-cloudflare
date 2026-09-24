@echo off
chcp 65001 >nul
cd /d "%~dp0"
title DADASHMODE v4 - build offline voice pack
if "%~1"=="" (
  echo.
  echo  Drag your exported episode file ^(*.dadashmode.json^) onto this file.
  echo  Voices are generated with Microsoft Dilara ^(female, no API key^) into the voices folder.
  echo  For Gemini voices instead:  set GEMINI_API_KEY=your_key  then  node tools\build-voicepack.mjs episode.json
  echo.
  pause
  goto :eof
)
node tools\build-voicepack.mjs "%~1" --provider edge
pause
