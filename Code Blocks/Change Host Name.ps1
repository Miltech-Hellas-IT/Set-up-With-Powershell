# Load the configuration file
$config = Get-Content -Path "D:\Set up with PowerShell\Data\Data.json" | ConvertFrom-Json

# Access the variables from the configuration
$newComputerName = $config.newComputerName

# Use Local Variables in the script

# Set the new computer name
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName" -Name "ComputerName" -Value $newComputerName
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName" -Name "ComputerName" -Value $newComputerName

# Rename the computer and restart
Rename-Computer -NewName $newComputerName  -Restart