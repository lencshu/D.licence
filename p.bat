@echo off
rem @echo off
rem set DIR="picaudio\"
rem for %%a in (time.txt) do set refDate=%%~ta
rem pushd "%DIR%"
rem for /f "tokens=*" %%a in ('dir /b /a-d /o-d "*.png"') do (
rem 	set "lastdate=%%~ta"
rem 	IF %refDate% GTR %%~ta echo %%~a
rem 	)
rem pushd "cd .."
rem pause


setlocal
for /f "tokens=2,3,4 delims=/ " %%f in ('date /t') do set d=%%h%%g%%f
for /f "tokens=1,2 delims=: " %%f in ('time /t') do set t=%%f%%g
echo datetime is : %d%%t%
endlocal

rem @echo off
rem setlocal
rem call :GetUnixTime UNIX_TIME
rem echo %UNIX_TIME% seconds have elapsed since 1970-01-01 00:00:00
rem goto :EOF

rem :GetUnixTime
rem setlocal enableextensions
rem for /f %%x in ('wmic path win32_utctime get /format:list ^| findstr "="') do (
rem     set %%x)
rem set /a z=(14-100%Month%%%100)/12, y=10000%Year%%%10000-z
rem set /a ut=y*365+y/4-y/100+y/400+(153*(100%Month%%%100+12*z-3)+2)/5+Day-719469
rem set /a ut=ut*86400+100%Hour%%%100*3600+100%Minute%%%100*60+100%Second%%%100
rem endlocal & set "%1=%ut%" & goto :EOF




rem for %%a in (time.txt) do set refDate=%%~ta
rem echo %refDate%
rem set DIR="picaudio\"
rem echo %DIR%

rem for /R %DIR% %%f in (*.png) do ( 
rem echo %%f
rem forfiles /M %%f /C "cmd /c echo @fdate @ftime"
rem for %%b in (%%f) do set fileDate=%%~ta
rem echo %fileDate%
rem )







rem for /f "tokens=*" %a in ('dir /b /a-d /o-d "*.png"') do set "lastdate=%%~ta"& echo "%~a"


rem @echo off
rem set folder1=D:\FTP-NSQM\2G_VOLUME\2017
rem set folder2=D:\FTP-NSQM\newday\2gvolume

rem pushd "%DIR%"
rem :: date lastdate to the latest date/time of a file in folder1
rem for /f "tokens=*" %%a in ('dir /b /a-d /o-d "*.png"') do set "lastdate=%%~ta"& goto next
rem :next
rem :: grab first 8 characters (may need to be 10, depending on your date/time format)
rem :: - get the date part only
rem set "lastdate=%lastdate:~0,8%"
rem for /f "tokens=*" %%a in ('dir /b /a-d /o-d "*.png"') do echo "%%~ta" | find "%lastdate%" >nul & if errorlevel 1 (
rem  goto done
rem  ) else (copy "%%~a" "%folder2%")
rem )
rem :done
rem popd




rem goto notchange
rem :change
rem echo png to change
rem forfiles /p .\picaudio\ /m %%f /D -1 /c "cmd /c pngquant.exe @path --force --verbose --quality=45-80 --ext=.png "
rem goto next
rem :notchange
rem echo no change
rem goto end
rem :next


rem forfiles /M myfile.txt /C "cmd /c echo @fdate @ftime"
rem & color 0A
rem FOR %%d IN (time) DO SET referenceTime=%%~tf
rem FOR %%e IN (%%f) DO SET filedatetime=%%~tf
rem IF %filedatetime:~0, 10% > %referenceTime% goto change
rem forfiles /p .\picaudio\ /m *.png /D -1 /c "cmd /c pngquant.exe @path --force --verbose --quality=45-80 --ext=.png "
rem echo time/t >time
rem powershell $moditime=(Get-item "time.txt").lastwritetime
rem powershell Get-ChildItem –Path .\picaudio\*.png | Where-Object {$_.LastWriteTime -gt $moditime}
rem forfiles /p .\picaudio\ /m *.png /D +2017/12/7 /c "cmd /c echo @path"
rem Get-ChildItem | Where-Object {$_.LastWriteTime -lt (Get-Date).AddDays(-30)}



