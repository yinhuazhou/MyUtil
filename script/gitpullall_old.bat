:: gitpullall.bat
@ECHO OFF
SETLOCAL ENABLEEXTENSIONS

SET MYGIT="D:\Program Files\Git\bin\git.exe"
SET MYHG="D:\Program Files\TortoiseHg\hg.exe"
FOR /D %%X IN (*) DO (
    IF EXIST "%%X\.git\" (
        CD /D "%%X"
        ECHO ===== git pull %%X
        %MYGIT% pull --recurse-submodules=yes --ff-only --all --progress
        CD /D ..
    ) ELSE IF EXIST "%%X\.hg\" (
        CD /D "%%X"
        ECHO ===== hg pull %%X
        %MYGIT% pull -u
        CD /D ..
    ) ELSE ECHO ..... Skipped %%X
)

:bye
PAUSE
ENDLOCAL
