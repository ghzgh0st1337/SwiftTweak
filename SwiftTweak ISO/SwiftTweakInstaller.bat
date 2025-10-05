@echo off >nul                              
title SwiftTweakInstaller>nul
chcp 65001 >nul

:1
if exist "C:\SwiftTweak\" (goto Menu ) else (mkdir C:\SwiftTweak) >nul 2>&1

:Menu
cls
echo.
echo.
echo.                         [38;2;153;153;153m██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗ 
echo.                         [38;2;178;178;178m██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗
echo.                         [38;2;204;204;204m██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝
echo.                         [38;2;229;229;229m██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗
echo.                         [38;2;242;242;242m██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║
echo.                          [38;2;255;255;255m╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝
echo.
echo.
echo.
echo.
echo.                         ╔══(1)Discord    ╔══(5)NP++       ╔══(9)LightShot  ╔══
echo.                         ║                ║                ║                ║
echo.                         ╠══(2)VSC        ╠══(6)Spotify    ╠══(10)Signal    ╠══
echo.                         ║                ║                ║                ║
echo.                         ╠══(3)7zip       ╠══(7)Steam      ╠══(11)Chrome    ╠══                 
echo.                         ║                ║                ║                ║        
echo.                         ╚══(4)Firefox    ╚══(8)Telegram   ╚══(12)wallpaper ╚══(E)Exit
echo.
echo.
echo.
set /p input=
if /i %input% == 1 goto DC
if /i %input% == 2 goto VSC
if /i %input% == 3 goto 7Zip
if /i %input% == 4 goto FF
if /i %input% == 5 goto NP++
if /i %input% == 6 goto Spotify
if /i %input% == 7 goto Steam
if /i %input% == 8 goto Telegram
if /i %input% == 9 goto LightShot
if /i %input% == 10 goto Signal
if /i %input% == 11 goto Chrome
if /i %input% == 12 goto Wallpaper
if /i %input% == E Exit
) else (
goto Menu

:DC
cls
curl -L -o "C:\SwiftTweak\Discord.exe" "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x64" >nul  
start "" "C:\SwiftTweak\Discord.exe" >nul 2>&1
goto Menu

:VSC
cls
curl -L -o "C:\SwiftTweak\VSC.exe" "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user" >nul
start "" "C:\SwiftTweak\VSC.exe" >nul 2>&1
goto Menu

:7Zip
cls
curl -L -o "C:\SwiftTweak\7Zip.exe" "https://www.7-zip.org/a/7z2501-x64.exe" >nul
start "" "C:\SwiftTweak\7Zip.exe" >nul 2>&1
goto Menu

:FF
cls
curl -L -o "C:\SwiftTweak\Firefox.exe" "https://download.mozilla.org/?product=firefox-stub&os=win&lang=pl" >nul
start "" "C:\SwiftTweak\Firefox.exe" >nul 2>&1
goto Menu

:NP++
cls
curl -L -o "C:\SwiftTweak\NotePad++.exe" "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.8.5/npp.8.8.5.Installer.x64.exe" >nul
start "" "C:\SwiftTweak\NotePad++.exe" >nul 2>&1
goto Menu

:Spotify
cls
curl -L -o "C:\SwiftTweak\Spotify.exe" "https://download.scdn.co/SpotifySetup.exe" >nul
start "" "C:\SwiftTweak\Spotify.exe" >nul 2>&1
goto Menu

:Steam
cls
curl -L -o "C:\SwiftTweak\Steam.exe" "https://cdn.fastly.steamstatic.com/client/installer/SteamSetup.exe" >nul
start "" "C:\SwiftTweak\Steam.exe" >nul 2>&1
goto Menu

:Telegram
cls
curl -L -o "C:\SwiftTweak\Telegram.exe" "https://telegram.org/dl/desktop/win64" >nul
start "" "C:\SwiftTweak\Telegram.exe" >nul 2>&1
goto Menu

:LightShot
cls
curl -L -o "C:\SwiftTweak\LightShot.exe" "https://app.prntscr.com/build/setup-lightshot.exe" >nul
start "" "C:\SwiftTweak\LightShot.exe" >nul 2>&1
goto Menu

:Signal
cls
curl -L -o "C:\SwiftTweak\Signal.exe" "https://updates.signal.org/desktop/signal-desktop-win-7.72.1.exe" >nul 
start "" "C:\SwiftTweak\Signal.exe" >nul 2>&1
goto Menu

:Chrome
cls
curl -L -o "C:\SwiftTweak\chrome.exe" "https://www.google.com/intl/pl_pl/chrome/next-steps.html?statcb=1&installdataindex=empty&defaultbrowser=0#" >nul
start "" "C:\SwiftTweak\chrome.exe" >nul 2>&1
goto Menu

:Wallpaper
cls
curl -L -o "C:\SwiftTweak\SwiftTweakWallpaper.bmp" "https://cdn.discordapp.com/attachments/1356009269803221134/1423220444843999243/SwiftTweakWallpaper.png?ex=68df84d4&is=68de3354&hm=4abe9654bc3f88bf0d1301b456872ec2193f5e3210f28a8cebd2981d8b106615&" >nul 2>&1
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "C:\SwiftTweak\SwiftTweakWallpaper.bmp" /f >nul 2>&1
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters >nul 2>&1
goto Menu




pause
cls
::curl -L -o "C:\SwiftTweak\nazwa" "" >nul
::start "" "miejsce aplikacji" >nul 2>&1