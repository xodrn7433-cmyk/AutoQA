@echo off
cd /d "%~dp0"

adb shell am start -n com.banaple.foodproapp.banapresso/.FoodProAppIntro

cmd /c maestro test . --format junit
set "RC=%ERRORLEVEL%"

echo ERRORLEVEL=%RC%

if "%RC%"=="0" (
    echo ========= RESULT: PASS =========
) else (
    echo ========= RESULT: FAIL =========
)

pause