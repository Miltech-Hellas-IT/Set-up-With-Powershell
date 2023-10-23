# Load the configuration file
$config = Get-Content -Path "D:\Set up with PowerShell\Data\Data.json" | ConvertFrom-Json

# Access the variables from the configuration
$UserToDelete = $config.UserToDelete

# Use Local Variables in the script
Remove-LocalUser -Name $UserToDelete -Confirm:$false 
