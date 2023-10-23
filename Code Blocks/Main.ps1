# Check if the script is running with administrator privileges
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    # Relaunch the script with administrator privileges
    Start-Process powershell.exe -ArgumentList "-File `"$($MyInvocation.MyCommand.Path)`"" -Verb RunAs
    Exit
}

# Your script code that requires administrator privileges goes here
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process -Force
Write-Host "The ExecutionPolicy is Unrestricted" 
Get-AppxPackage -AllUsers | Remove-AppxPackage
powershell.exe -File "D:\Set up with PowerShell\Code Blocks\Delete Microsoft Account.ps1"
Write-Host "The other User is Deleted" 
powershell.exe -File "D:\Set up with PowerShell\Code Blocks\Set Wallpaper.ps1"
Write-Host "The Wallpaper is Changed" 
powershell.exe -File "D:\Set up with PowerShell\Code Blocks\Apps Installation.ps1"
Write-Host "The Apps are Installed" 
powershell.exe -File "D:\Set up with PowerShell\Code Blocks\Change Host Name.ps1"
Write-Host "The Host Name is Changed" 
