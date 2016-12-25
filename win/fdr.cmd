@ECHO OFF

for /f %%i in ('"list-parent-dirs" ^| fzf') do (
  cd %%i
  break
)