@echo off
title Khoi chay Trinh duyet Cua Ban (Coc Coc / Chrome / Edge)
echo ============================================================
echo   Khoi chay Trinh duyet ho tro Scribd / StuDocu Downloader
echo ============================================================
echo.

set DEBUG_DIR=%LOCALAPPDATA%\Browser-User-Data-Debug

if exist "C:\Program Files\CocCoc\Browser\Application\browser.exe" (
    echo Dang khoi chay Coc Coc Browser (Port 9222)...
    start "" "C:\Program Files\CocCoc\Browser\Application\browser.exe" --remote-debugging-port=9222 --user-data-dir="%DEBUG_DIR%"
) else if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    echo Dang khoi chay Google Chrome (Port 9222)...
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --remote-debugging-port=9222 --user-data-dir="%DEBUG_DIR%"
) else if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
    echo Dang khoi chay Microsoft Edge (Port 9222)...
    start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --remote-debugging-port=9222 --user-data-dir="%DEBUG_DIR%"
)

echo.
echo Trinh duyet dang chay va san sang ket noi (Port 9222).
echo Ban hay dan link StuDocu/Scribd vao trinh duyet vua mo va giai quyet Cloudflare (neu co).
echo Sau do quay lai Terminal va chay: python scribd-downloader.py
echo.
pause
