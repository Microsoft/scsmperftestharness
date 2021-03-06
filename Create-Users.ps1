#Create-Users
Param([int]$NumberOfUsersToCreate, [string]$Domain, [string]$Password, [int] $StartNumber)
Import-Module ServerManager
Add-WindowsFeature RSAT-AD-PowerShell
Import-Module ActiveDirectory

$ss = ConvertTo-SecureString -AsPlainText -Force -String $Password
$OU = 'CN=Users,DC=' + $Domain + ',DC=com'
$StartNumber..($StartNumber + $NumberOfUsersToCreate) | foreach { New-ADUser -SamAccountName TestUser$_ -GivenName Test -Surname User$_ -Name "Test User$_" -DisplayName "Test User$_" -Path $OU -CannotChangePassword $true -ChangePasswordAtLogon $false -Enabled $true -AccountPassword $ss;$_}