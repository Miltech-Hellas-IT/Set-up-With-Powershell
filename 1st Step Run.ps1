# Check if the script is running with administrator privileges
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    # Relaunch the script with administrator privileges
    Start-Process powershell.exe -ArgumentList "-File `"$($MyInvocation.MyCommand.Path)`"" -Verb RunAs
    Exit
}

# Your script code that requires administrator privileges goes here
Pause
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process -Force
powershell.exe -File "D:\Set up with PowerShell\Code Blocks\Create Admin Microsoft Account.ps1"
Pause
read