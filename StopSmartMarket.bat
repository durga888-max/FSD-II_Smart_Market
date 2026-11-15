
@echo off
title Stop Smart Market

echo ======================================
echo        STOPPING SMART MARKET
echo ======================================

sc query Tomcat9 | find "RUNNING" >nul
if errorlevel 1 (
    echo Tomcat is already stopped.
) else (
    echo Stopping Tomcat...
    net stop Tomcat9
)

echo.
echo Smart Market backend has been stopped.
echo Oracle Database has been left running.
pause
