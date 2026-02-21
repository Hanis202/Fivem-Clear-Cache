@echo off
set "FiveMPath=%LocalAppData%\FiveM\FiveM.app"

echo Czyszczenie cache FiveM...

:: Sprawdzenie czy główny folder istnieje
if not exist "%FiveMPath%" (
    echo [BLAD] Nie znaleziono FiveM w domyslnej lokalizacji.
    pause
    exit
)

:: Przejscie do folderu data, gdzie znajduje sie cache
cd /d "%FiveMPath%\data"

:: Usuwanie konkretnych folderów cache (bezpieczne)
if exist "cache" rmdir /s /q "cache"
if exist "server-cache" rmdir /s /q "server-cache"
if exist "server-cache-priv" rmdir /s /q "server-cache-priv"

:: Opcjonalne: czyszczenie logów i crashy w glownym folderze
if exist "%FiveMPath%\logs" rmdir /s /q "%FiveMPath%\logs"
if exist "%FiveMPath%\crashes" rmdir /s /q "%FiveMPath%\crashes"

echo Gotowe! Cache zostal wyczyszczony poprawnie.
pause
