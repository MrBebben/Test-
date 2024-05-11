@echo off
echo MsgBox "you found it", vbInformation, "no way" > %temp%\youfoundit.vbs
%temp%\youfoundit.vbs
del %temp%\youfoundit.vbs