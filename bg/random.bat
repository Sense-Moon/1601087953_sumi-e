@echo off
setlocal enabledelayedexpansion

:: フォルダ内のすべてのpngファイルの名前を変更
for %%F in (*.png) do (
  set "timestamp=!time:~0,2!!time:~3,2!!time:~6,2!!time:~9,2!!random!"
  ren "%%F" "!timestamp!.png"
)

echo All files have been renamed.
pause
