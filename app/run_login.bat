@echo off
cd /d "%~dp0"

REM 앱 실행
adb shell am start -n com.banaple.foodproapp.banapresso/.FoodProAppIntro

REM ✅ BAT가 login 폴더 안에 있으니, 현재 폴더(.) 전체 실행 = login 폴더 전체 실행
call "C:\Users\Banaple151\AndroidStudioProjects\test\maestro\bin\maestro.bat" test .

REM 결과 출력
if %ERRORLEVEL%==0 (
    echo ========= RESULT: PASS =========
) else (
    echo ========= RESULT: FAIL =========
)

pause
