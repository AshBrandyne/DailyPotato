@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"C:\jruby-9.1.8.0\bin\jruby.exe" "C:/2017Ruby/dailypotato/vendor/bundle/jruby/2.3.0/bin/thor" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"C:\jruby-9.1.8.0\bin\jruby.exe" "%~dpn0" %*
