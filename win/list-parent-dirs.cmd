@ECHO OFF
SETLOCAL EnableExtensions DisableDelayedExpansion

rem "http://stackoverflow.com/q/41308193/157260

call :showParent "%CD%"
ENDLOCAL
goto :eof

:showParent
  set "_Parent=%~dp1"
  echo(%_Parent:~0,-1%
  if NOT "%~dp1"=="%~d1\" call :showParent "%_Parent:~0,-1%"
goto :eof
