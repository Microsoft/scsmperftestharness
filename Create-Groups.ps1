Import-Module ActiveDirectory
1..100000 | foreach{New-ADGroup -Name TestGroup$_ -SamAccountName TestGroup$_ -DisplayName TestGroup$_ -GroupCategory Security -GroupScope Global}