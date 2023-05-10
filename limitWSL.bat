@echo off

set WSLCONFIG_FILE=%USERPROFILE%\.wslconfig

REM Create the file if it doesn't exist
if not exist %WSLCONFIG_FILE% type nul > %WSLCONFIG_FILE%

REM Add the [wsl2] section and "memory=2GB" line to the file
echo [wsl2]>> %WSLCONFIG_FILE%
echo memory=4GB>> %WSLCONFIG_FILE%

REM Print a message to confirm that the lines were added
echo The following lines were added to %WSLCONFIG_FILE%:
type %WSLCONFIG_FILE%
