echo off 
rem & color 0A

rem FOR %%d IN (time) DO SET referenceTime=%%~tf

set DIR="picaudio\"
echo DIR=%DIR%

for /R %DIR% %%f in (*.png) do ( 

FOR %%e IN (%%f) DO SET filedatetime=%%~tf
IF %filedatetime:~0, 10% > %referenceTime% goto change
goto notchange

:change
echo png to change
rem forfiles /p .\picaudio\ /m %%f /D -1 /c "cmd /c pngquant.exe @path --force --verbose --quality=45-80 --ext=.png "

goto next

:notchange
echo no change
rem goto end

:next
echo %%f
)
pause










rem forfiles /p .\picaudio\ /m *.png /D -1 /c "cmd /c pngquant.exe @path --force --verbose --quality=45-80 --ext=.png "

rem echo time/t >time


rem powershell $moditime=(Get-item "time.txt").lastwritetime
rem powershell Get-ChildItem –Path .\picaudio\*.png | Where-Object {$_.LastWriteTime -gt $moditime}
rem forfiles /p .\picaudio\ /m *.png /D +2017/12/7 /c "cmd /c echo @path"
rem Get-ChildItem | Where-Object {$_.LastWriteTime -lt (Get-Date).AddDays(-30)}



