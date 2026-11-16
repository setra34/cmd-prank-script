@echo off
color 0a
title KRITIK SISTEM UYARISI

:: Eger sistem yeniden basladiktan sonra acildiysa (ikinci asama)
if "%~1"=="ikinci_asama" goto :GERI_SAYIM

:: --- 1. ASAMA: MORS ALFABESI VE YENIDEN BASLATMA ---
echo ============================================================================
echo [MORS KODU]: -... .. .-.. --. .. .-.. . .-. .. -. .. --.. / ... .. --.. -.. .. .-. .. .-.. .. -.-- --- .-.
echo [CEVIRI]   : BILGILERINIZ SIZDIRILIYOR...
echo ============================================================================
echo.
timeout /t 3 >nul

echo [!] UYARI: SISTEME VIRUS GIRDI!
echo [!] Uzak sunucuya veri aktarimi baslatildi...
timeout /t 2 >nul
echo [====================] 100%%
echo.
echo [!] Sistem guvenlik kilidi devre disi. Yeniden baslatiliyor...
timeout /t 3 >nul

:: Dosya kopyalamadan sadece bir sonraki acilista tek seferlik geri sayimi baslatir
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v "MorsSaka" /t REG_SZ /d "cmd /c color 0c & title SISTEM TEHDIDI & for /L %%i in (60,-1,1) do (cls & echo. & echo ================================================== & echo    DIKKAT! SISTEME VIRUS GIRDI! & echo    BILGILERINIZ SIZDIRILIYOR... & echo. & echo    VIRUSUN AKTIF OLMASINA SON: %%i SANIYE & echo ================================================== & timeout /t 1 >nul) & cls & color 0a & echo. & echo SAKA YAPTIM! BILGISAYARIN TAMAMEN GUVENDE :) & start \"\" \"https://youtu.be/7NdxJ2PedHo?si=9MG5Gkqi4tAHAZy5\" & timeout /t 4 >nul" /f >nul

:: 10 saniye icinde zorla yeniden baslatir
shutdown /r /f /t 10 /c "Kritik sistem hatasi! Bilgisayar 10 saniye icinde yeniden baslatilacak."
exit