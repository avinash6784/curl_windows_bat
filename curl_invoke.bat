echo off

:: Read input and passed to the curl as a POST data, pass json/txt file name
set "input=%~1"
setlocal EnableDelayedExpansion

if "!input!"=="" (
    echo Please provide input param as filepath, it is empty..
) else (
   	echo %input%
	D:\work\curl\bin\curl -H "Content-Type: application/json" -X POST http://www.google.com -d @%input% 2> output.txt
)

pause

