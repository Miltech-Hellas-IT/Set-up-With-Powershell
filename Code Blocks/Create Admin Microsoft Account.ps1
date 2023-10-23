# Load the configuration file
$config = Get-Content -Path "D:\Set up with PowerShell\Data\Data.json" | ConvertFrom-Json

# Access the variables from the configuration
$Username1 = $config.Username1
$Password1 = $config.Password1
$Username2 = $config.Username2
$Password2 = $config.Password2

# Use Local Variables in the script
New-LocalUser -Name $Username1 -Password (ConvertTo-SecureString $Password1 -AsPlainText -Force) -AccountNeverExpires -Description "Microsoft Account"
New-LocalUser -Name $Username2 -Password (ConvertTo-SecureString $Password2 -AsPlainText -Force) -AccountNeverExpires -Description "Microsoft Account"
Add-LocalGroupMember -Group "Administrators" -Member $Username2
Add-LocalGroupMember -Group "Users" -Member $Username1