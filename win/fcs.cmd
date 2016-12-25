@echo off

for /f %%i in ('"git log --color=always --pretty=oneline --abbrev-commit --reverse" ^| fzf --tac +s +m -e --ansi --reverse') do (
  echo %%i
  break
)