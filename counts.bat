@echo off
 
if {%1}=={} echo.Synatx: %0 path & goto end
if not exist "%~1" echo. "%~1" not found. & goto end
 
for /f "delims=" %%a in ('dir /a-d-s-h /b /s "%~1" ^| find /v /c ""') do (
  echo.Total file^(s^): %%a
)
 
:end
@echo on