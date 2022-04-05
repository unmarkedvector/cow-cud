@echo off
setlocal enabledelayedexpansion

call :browser_clean "%LOCALAPPDATA%\Google\Chrome\User Data\Default"
call :browser_clean "%LOCALAPPDATA%\Opera Software\Opera Stable"
call :browser_clean "%APPDATA%\Opera Software\Opera Stable"
call :browser_clean "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default"
call :browser_clean "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default"
exit /b

:browser_clean
set "purge=del /f /q"
pushd "%~1"
2>nul (
	%purge% "Cache\Cache_Data\*" "Code Cache\js\*" "Code Cache\wasm\*"
	for %%A in (Cookies History "Login Data" "Top Sites" "Web Data") do %purge% "%%~A" "%%~A-journal"
	%purge% "Last Browser" "Last Session" "Last Tabs" "Local State" "Visited Links"
)
popd
exit /b