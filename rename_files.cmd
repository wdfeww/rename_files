@echo off
setlocal enableDelayedExpansion

echo Najst string a vymazat z nazvu vsetkych suborov v zloske
set /p input_string=string:
echo input !input_string!
for %%f in (*) do (
    set filename=%%~nf
    set suffix=%%~xf
    set changed_name=!filename:%input_string%=!
    echo changing %%f to "!changed_name!!suffix!"
    ren %%~nxf "!changed_name!!suffix!"
)
goto :eof

