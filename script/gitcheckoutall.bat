:: gitcheckoutall.bat
@ECHO OFF
SETLOCAL ENABLEEXTENSIONS

SET MYGIT="D:\Program Files\Git\bin\git.exe"
FOR /D %%X IN (*) DO (
  IF EXIST "%%X\.git\" (
    CD /D "%%X"
    ECHO ===== git checkout %%X
    %MYGIT% checkout --recurse-submodules -f --
    CD /D ..
  ) ELSE ECHO ..... Skipped %%X
)

:bye
PAUSE
ENDLOCAL
::SETLOCAL ENABLEEXTENSIONS
::————————————————
::版权声明：本文为CSDN博主「feiyunw」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。
::原文链接：https://blog.csdn.net/feiyunw/article/details/79256998