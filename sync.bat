@echo off
REM ── 同步各來源儀表板到 site1（整合站自包含副本）──
REM 更新過 market / neocloud / cpo / uas 後，執行此檔即可把最新版複製進 site1
setlocal
cd /d "%~dp0"

echo [1/4] market  ...
copy /Y "..\market\index.html" "market\index.html" >nul
if exist "..\market\data" xcopy /Y /E /I /Q "..\market\data" "market\data" >nul

echo [2/4] neocloud ...
copy /Y "..\neocloud\index.html" "neocloud\index.html" >nul
if exist "..\neocloud\data" xcopy /Y /E /I /Q "..\neocloud\data" "neocloud\data" >nul

echo [3/4] cpo      ...
copy /Y "..\cpo\cpo_dashboard.html" "cpo\cpo_dashboard.html" >nul

echo [4/4] uas      ...
copy /Y "..\uas\index.html" "uas\index.html" >nul

echo.
echo 完成，site1 已更新為最新版。
pause
