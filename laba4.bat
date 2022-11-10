@echo off
setlocal enabledelayedexpansion
set papka=%1
if exist %papka% (goto m1) else (echo dannoy papki nety)
pause
exit
:m1 
for /R %papka% %%A in (*.doc) do (echo %%~nA >> D:\simvol.txt)

for /F %%I in (D:\simvol.txt) do (

set var=%%I 
set /a count=1
:start 
set b=%var:~0,1%
set var=%var:%b%=%
if not "%var%"=="" (
set /a count+=1
echo %count%
goto start
) 
echo %count% >> D:\result.txt

)
endlocal
::del D:\simvol.txt
pause
