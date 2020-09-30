::Cow Cud - A program to clear unnecesarry browser data to free space. Version 1.1A
::developer42, 2020 and sintrode, 2020
::Published by developer42 as unmarkedvector on Tues, Sept. 29
@echo off
title Cow Cud
timout 1 >nul
::Opera Stable, Version 2020/9/26
cd "%APPDATA%\Opera Software\Opera Stable"
del History
del Cookies
del History-journal
del "Last Session"
del "Last Tabs"
del "Visited Links"
del "Current Session"
del "Web Data"
del "Web Data-journal"
del "Current Tabs"
del "Cookies-journal"
cd Sessions
del /F /Q *.*
cd ..
cd Session Storage
del /F /Q *.*
cd..
cd AutofillStrikeDatabase
del /F /Q *.*
cd ..
cd "%LOCALAPPDATA%\Opera Software\Opera Stable"
cd Cache
del /F /Q *.*
::Microsoft Edge, Version 85
cd "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default"
del "Web Data"
del "History"
del "History-journal"
del "History Provider Cache"
del "Last Session"
del "Last Tabs"
del "Login Data"
del "Login Data-journal"
del "Top Sites"
del "Top Sites-journal"
del "Visited Links"
del "Web Data-jornal"
del "Last Browser"
del "Local State"
cd AutofillStrikeDatabase
del /F /Q *.*
cd ..
cd Cache
del /F /Q *.*
cd "%LOCALAPPDATA%\Microsoft\Edge\User Data\"
del "Last Browser"
cd "%LOCALAPPDATA%\Microsoft\Windows\WebCache\"
del /F /Q */*
cls
timeout 1 >nul /NOBREAK
exit
