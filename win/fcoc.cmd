@ECHO OFF

for /f %%i in ('" git log --pretty=oneline --abbrev-commit --reverse" ^| fzf --tac +s +m -e') do (
  call git checkout %%i
  break
)
