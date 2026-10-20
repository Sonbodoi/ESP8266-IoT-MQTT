@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo === IoT Classroom - ESP8266 / MQTT THUC ===
where node >nul 2>&1
if errorlevel 1 (
  echo Chua cai Node.js. Cai tai https://nodejs.org/
  pause
  exit /b 1
)
if not exist node_modules\express\package.json (
  echo Dang cai thu vien Node.js...
  call npm install
  if errorlevel 1 (pause & exit /b 1)
)
echo Chu y: Can MQTT Broker va ESP8266 da nap firmware moi.
call npm start
pause
