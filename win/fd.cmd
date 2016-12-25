@echo off

for /f %%i in ('"dir /b /s /ad" ^| fzf') do (
  cd %%i
  break
)

rem "https://blogs.msdn.microsoft.com/oldnewthing/20120731-00/?p=7003"
rem "https://github.com/mattn/cool-peco-windows"
rem "https://github.com/taichi/pbat"