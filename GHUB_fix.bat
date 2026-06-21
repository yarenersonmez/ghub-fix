@echo off
title G HUB Duzeltici
color 0A

echo ============================================
echo        G HUB Duzeltici - Baslatiliyor
echo ============================================
echo.

:: Yonetici kontrolu
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

echo [4/5] Servis oturmasini bekleniyor (10 saniye)...
timeout /t 10 /nobreak
echo.

echo [5/5] G HUB baslatiliyor...
start "" "C:\Program Files\LGHUB\lghub.exe"
echo       Tamamlandi.
echo.

echo ============================================
echo   G HUB basarıyla yeniden baslatildi!
echo ============================================
echo.
timeout /t 3 /nobreak >nul
exit
