@ECHO OFF

for /f "tokens=1,2" %%i in ('"git branch -a -vv" ^| fzf') do (
  if %%i==* (
    call gitk %%j
  ) else (
    call gitk %%i
  )
  break
)
