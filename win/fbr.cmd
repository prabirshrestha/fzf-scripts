@ECHO OFF

for /f "tokens=1,2" %%i in ('"git branch -vv" ^| fzf') do (
  if %%i==* (
    call git checkout %%j
  ) else (
    call git checkout %%i
  )
  break
)
