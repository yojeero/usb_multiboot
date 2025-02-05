@echo off
set name=message
CD "%~dp0files"
"%~dp0cpio\cpio.exe" -i < "%~dp0%name%"