@echo off
title G HUB Fix
color 0A

echo ============================================
echo         G HUB Fix - Language / Dil
echo ============================================
echo.
echo  [1] Turkce
echo  [2] English
echo.
set /p LANG="Seciminiz / Your choice (1/2): "

if "%LANG%"=="1" goto TURKCE
if "%LANG%"=="2" goto ENGLISH
echo Gecersiz secim / Invalid choice.
pause
exit /b 1

:: ============================================
:TURKCE
:: ============================================
title G HUB Duzeltici
cls
echo ============================================
echo        G HUB Duzeltici - Baslatiliyor
echo ============================================
echo.

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [!] Bu program yonetici olarak calistirilmali!
    echo     Dosyaya sag tiklayin - "Yonetici olarak calistir" secin.
    echo.
    pause
    exit /b 1
)

echo [1/5] G HUB kapatiliyor...
taskkill /f /im "lghub.exe" >nul 2>&1
taskkill /f /im "lghub_agent.exe" >nul 2>&1
echo       Tamamlandi.
echo.

echo [2/5] Kalan islemler temizleniyor...
timeout /t 2 /nobreak >nul
tasklist /fi "imagename eq lghub.exe" 2>nul | find /i "lghub.exe" >nul
if not errorlevel 1 (
    taskkill /f /im "lghub.exe" >nul 2>&1
)
echo       Tamamlandi.
echo.

echo [3/5] LGHUBUpdaterService yeniden baslatiliyor...
net stop "LGHUBUpdaterService" >nul 2>&1
timeout /t 2 /nobreak >nul
net start "LGHUBUpdaterService" >nul 2>&1
echo       Tamamlandi.
echo.

echo [4/5] Servis oturmasini bekleniyor... (10 saniye)
timeout /t 10 /nobreak
echo.

echo [5/5] G HUB baslatiliyor...
start "" "C:\Program Files\LGHUB\lghub.exe"
echo       Tamamlandi.
echo.

echo ============================================
echo   G HUB basariyla yeniden baslatildi!
echo ============================================
echo.
timeout /t 3 /nobreak >nul
exit

:: ============================================
:ENGLISH
:: ============================================
title G HUB Fix
cls
echo ============================================
echo          G HUB Fix - Starting...
echo ============================================
echo.

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [!] This program must be run as administrator!
    echo     Right-click the file and select "Run as administrator".
    echo.
    pause
    exit /b 1
)

echo [1/5] Closing G HUB...
taskkill /f /im "lghub.exe" >nul 2>&1
taskkill /f /im "lghub_agent.exe" >nul 2>&1
echo       Done.
echo.

echo [2/5] Cleaning up remaining processes...
timeout /t 2 /nobreak >nul
tasklist /fi "imagename eq lghub.exe" 2>nul | find /i "lghub.exe" >nul
if not errorlevel 1 (
    taskkill /f /im "lghub.exe" >nul 2>&1
)
echo       Done.
echo.

echo [3/5] Restarting LGHUBUpdaterService...
net stop "LGHUBUpdaterService" >nul 2>&1
timeout /t 2 /nobreak >nul
net start "LGHUBUpdaterService" >nul 2>&1
echo       Done.
echo.

echo [4/5] Waiting for service to stabilize... (10 seconds)
timeout /t 10 /nobreak
echo.

echo [5/5] Launching G HUB...
start "" "C:\Program Files\LGHUB\lghub.exe"
echo       Done.
echo.

echo ============================================
echo      G HUB successfully restarted!
echo ============================================
echo.
timeout /t 3 /nobreak >nul
exit
