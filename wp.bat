@echo off
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V HideIcons /T REG_DWORD /D 1 /F
ping localhost -n 1 >NUL
taskkill /f /im explorer.exe
start explorer.exe
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d %CD%\wp.bmp /F
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
ping localhost -n 1 >NUL
powershell -command "&{$p='HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3';$v=(Get-ItemProperty -Path $p).Settings;$v[8]=3;&Set-ItemProperty -Path $p -Name Settings -Value $v;&Stop-Process -f -ProcessName explorer}"
ping localhost -n 1 >NUL
start explorer.exe
ping localhost -n 1 >NUL