REM Do not run this without fully understanding what a fork bomb is.
REM It keeps splitting itself until there is no option but to restart the system.
REM Should you accidentally run this, you can close it via the task manager/closing the CMD prompt window.
@echo off

echo.
echo You are about to start a fork bomb. Are you sure?
echo.

:choice
set "input="
set /p input="Enter your choice (yes/no): "

if /I "%input%"=="yes" (
	echo Starting fork bomb...
	%0|%0
) else if /I "%input%"=="no" (
    echo Exiting without starting fork bomb...
    exit /b
) else (
	echo Invalid input. Please enter either "yes" or "no".
	goto choice
)
