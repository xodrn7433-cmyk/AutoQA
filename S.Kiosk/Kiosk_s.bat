@echo off
cd /d "%~dp0"

echo ===== Kiosk Test Start =====

for %%f in (*.yaml) do (
    echo Running %%f ...
    call maestro test "%%f" --format junit
    if errorlevel 1 (
        echo RESULT: FAIL
        goto END
    )
    echo RESULT: PASS
    echo.
)

:END
cmd /k