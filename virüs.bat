@echo off
:: ============================================================================
:: DESCRIPTION: Harmless Windows Prank Script (Educational / Entertainment)
:: NOTE: This script does NOT delete any files or harm the system.
:: It only displays fake console text and triggers a standard Windows restart.
:: ============================================================================

color 0a
title System Diagnostic Prank

echo [INFO] This is a harmless prank script. Close this window within 5 seconds to cancel!
timeout /t 5 >nul

cls
echo Initializing secure connection...
timeout /t 2 >nul

echo Bypassing mainframe firewall...
timeout /t 2 >nul

echo WARNING: Critical system failure detected!
echo Analyzing system files...
timeout /t 2 >nul
echo [====================] 100%%
echo.
echo System must restart immediately!
timeout /t 2 >nul

:: Adds a one-time harmless message to RunOnce (automatically removed after boot)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v "PrankMessage" /t REG_SZ /d "cmd /c color 0e & echo. & echo =========================================== & echo. & echo    H A H A H A H A H A H A H A H A ! ! ! & echo. & echo    JUST KIDDING! YOUR PC IS COMPLETELY FINE :) & echo. & echo =========================================== & echo. & pause" /f >nul

:: Triggers standard Windows restart in 10 seconds
shutdown /r /f /t 10 /c "System will restart in 10 seconds! (Run 'shutdown /a' to abort)"