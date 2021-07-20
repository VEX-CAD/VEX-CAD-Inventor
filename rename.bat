@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
SET old=1x
SET new=Steel Plate 1x
for /f "tokens=*" %%f in ('dir /b') do (
  SET newname=%%f
  SET newname=!newname:%old%=%new%!
  move "%%f" "!newname!"
)