@echo off
set dir=%~dp0
set branch=test

cd %dir%
for /d %%i in (%dir%*) do (
cd %%i
git fetch
rem #git checkout %branch% 
rem #git pull origin %branch%
git pull
cd ../
echo %%i
)
pause
