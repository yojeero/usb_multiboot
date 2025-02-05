@echo off
set name=message
IF EXIST "%~dp0%name%" ren "%~dp0%name%" %name%.BAK
DIR "%~dp0files" /A-D /B /ON > "%~dp0cpio_contents.txt"
CD "%~dp0files"
"%~dp0cpio\cpio.exe" -ov < "%~dp0cpio_contents.txt" > "%~dp0%name%"
DEL "%~dp0cpio_contents.txt"