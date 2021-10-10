@REM George Martinec <developer.jirka.martinec@gmail.com>

@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

CALL:INFO "Evaluation keys" & ECHO.
@REM Remove specific evaluation key ("WebStorm", ...) [CASE-SENSITIVE]
FOR %%I IN (AppCode, CLion, DataGrip, DataSpell, GoLand, IntelliJ, IntelliJIdea, PhpStorm, PyCharm, Rider, RubyMine, WebStorm, Resharper, dotCover, dotMemory, dotPeak, dotTrace) DO (
    FOR /d %%a IN ("%APPDATA%\JetBrains\%%I*") DO (
        CALL:SUCCESS "[%%I] - Removing evaluation key for: %%a"
        RD /s /q "%%a/eval" 2>NUL
        DEL /q "%%a\options\other.xml" 2>NUL
    )
)

ECHO. & CALL:INFO "Licences" & ECHO.
@REM Remove specific license from register (webstorm, ...) [CASE-SENSITIVE]
FOR %%I IN (objc, clion, datagrip, dataspell, go, goland, intellij, idea, phpstorm, pycharm, rider, ruby, webstorm, resharper, resharper-cpp, dotcover, dotmemory, dotpeak, dotcompiler,dotrace, profiler) DO (
    REG QUERY "HKEY_CURRENT_USER\SOFTWARE\JavaSoft\Prefs\jetbrains\%%I" 2>NUL >NUL
    IF !ERRORLEVEL! EQU 0 (
        REG DELETE "HKEY_CURRENT_USER\SOFTWARE\JavaSoft\Prefs\jetbrains\%%I" /f >NUL
        CALL:SUCCESS "[%%I] - Removed"
    ) ELSE (
        @REM ECHO [%%I] - Not found
        CALL:WARN "[%%I] - Not found"
    )
)

ECHO. & CALL:INFO "Plugins" & ECHO.
@REM Remove specific plugin license from register (pmaterialui, ...) [CASE-SENSITIVE]
FOR %%I IN (pmaterialui) DO (
    REG QUERY "HKEY_CURRENT_USER\SOFTWARE\JavaSoft\Prefs\jetbrains\%%I" 2>NUL >NUL
    IF !ERRORLEVEL! EQU 0 (
        REG DELETE "HKEY_CURRENT_USER\SOFTWARE\JavaSoft\Prefs\jetbrains\%%I" /f >NUL
        CALL:SUCCESS "[%%I] - Plugin license removed"
    ) ELSE (
        @REM ECHO [%%I] - Not found
        CALL:WARN "["%%I"] - Not found"
    )
)

ECHO. & ECHO Press any key to exit ...
pause >NUL

:SUCCESS
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Green %1
goto:eof

:INFO
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor DarkGray %1
goto:eof

:WARN
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Yellow %1
goto:eof