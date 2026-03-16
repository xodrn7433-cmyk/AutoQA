@echo off
cd /d "%~dp0"

echo ===== Kiosk Test Start =====

for %%f in (*.yaml) do @echo Running %%f ... & @maestro test "%%f" --format junit & @if errorlevel 1 (
    @echo RESULT: FAIL
    @echo ===== Test Stopped Due To Failure =====
    @pause
    @exit /b 1
) else (
    @echo RESULT: PASS
    @echo.
)

echo ===== All Tests Finished =====
pause
exit /b 0