$computers = @("scsm1.contoso.com","scsm2.contoso.com", "scsm3.contoso.com", "smdw1.contoso.com")
foreach ($computer in $computers)
{
    $computer
    Enter-PSSession $computer
    Stop-Service healthservice -force
    Stop-Service omcfg -force
    Stop-Service omsdk -force
    Exit-PSSession
}
