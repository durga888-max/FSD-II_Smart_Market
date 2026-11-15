
@echo off
title Smart Market Launcher

echo ======================================
echo       STARTING SMART MARKET
echo ======================================

REM Start Oracle Database if it is stopped
sc query OracleServiceXE | find "RUNNING" >nul
if errorlevel 1 (
    echo Starting Oracle Database...
    net start OracleServiceXE
)

REM Start Oracle Listener if it is stopped
sc query OracleXETNSListener | find "RUNNING" >nul
if errorlevel 1 (
    echo Starting Oracle Listener...
    net start OracleXETNSListener
)

REM Start Tomcat if it is stopped
sc query Tomcat9 | find "RUNNING" >nul
if errorlevel 1 (
    echo Starting Tomcat...
    net start Tomcat9
)

echo Waiting for Smart Market...
timeout /t 5 /nobreak >nul

REM Open Smart Market in Chrome
start "" "http://localhost:8089/smart-market/"

echo Smart Market launch requested.
exit
