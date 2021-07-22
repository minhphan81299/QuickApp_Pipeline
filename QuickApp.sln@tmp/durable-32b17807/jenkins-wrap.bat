@echo off 
cmd /c call "C:\Users\Admin\.jenkins\workspace\QuickApp\QuickApp.sln@tmp\durable-32b17807\jenkins-main.bat" > "C:\Users\Admin\.jenkins\workspace\QuickApp\QuickApp.sln@tmp\durable-32b17807\jenkins-log.txt" 2>&1
echo %ERRORLEVEL% > "C:\Users\Admin\.jenkins\workspace\QuickApp\QuickApp.sln@tmp\durable-32b17807\jenkins-result.txt"
