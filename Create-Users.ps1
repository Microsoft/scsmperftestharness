#Create-Users
Import-Module ActiveDirectory

$ss = ConvertTo-SecureString -AsPlainText -Force -String SMX#2001

1..200000 | foreach { New-ADUser -SamAccountName TestUser$_ -GivenName Test -Surname User$_ -Name "Test User$_" -DisplayName "Test User$_" -Path 'CN=Users,DC=contoso,DC=com' -CannotChangePassword $true -ChangePasswordAtLogon $false -Enabled $true -PasswordNeverExpires $true -AccountPassword $ss}