@echo off

rem Package:   GeekTools Whois Java Client 1.0
rem File:      whois.bat (Batch file)
rem Author:    Erik C. Thauvin <erik@skytouch.com>
rem Comments:  Part of the GeekTools Whois Java Client package.
rem            See the README.TXT file for more information.
rem 
rem Copyright (C) 2000 SkyTouch Communications - All Rights Reserved
rem
rem This program is distributed under the terms of the GNU General
rem Public License as published by the Free Software Foundation.
rem See the COPYING.TXT file for more information.

if not exist Whois.class goto WHOIS_ERROR

set JAVA_EXE=\bin\java.exe

if not %JAVA_PATH%.==. goto JAVA_RUN
set JAVA_PATH=%HOMEDRIVE%\jdk1.3
if exist %JAVA_PATH% goto JAVA_RUN
set JAVA_PATH=%HOMEDRIVE%\Progra~1\JavaSoft\JRE\1.3
if exist %JAVA_PATH% goto JAVA_RUN
set JAVA_PATH=
set JAVA_EXE=java.exe

:JAVA_RUN
%JAVA_PATH%%JAVA_EXE% Whois %1 %2 %3 %4 %5 %6 %7 %8 %9
if errorlevel 2 goto JAVA_ERROR
goto DONE

:JAVA_ERROR
set JAVA_PATH=
echo.
echo Please make sure that the JDK or JRE bin directory is included
echo in your system PATH environment variable.
echo. 
pause
goto DONE

:WHOIS_ERROR
echo.
echo The Whois.class could not be found. It must be located in the
echo same directory as the one this batch file was called from.
echo.
pause

:DONE
set JAVA_EXE=
@echo on
