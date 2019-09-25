@echo off
rem set working directory
cd /d %~dp0
echo ant %*
nant-0.92\bin\nant.exe %*
