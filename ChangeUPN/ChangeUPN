#Get user from OU (Example OU=IT,DC=DomainName,DC=COM)  and export to homedrive csv file
Get-ADUser -Filter * -SearchBase "OU=IT,DC=Arelion,DC=local" | Select-Object UserPrincipalName |Export-Csv -Path $env:HOMEDRIVE\Arie.csv
#Import CSV file with new current UPN and new UPN
$UserArray = Import-Csv -Path $env:HOMEDRIVE\NewUPN.csv
#Run for each user and changge to new UPN (remove what if after check
$UserArray | ForEach-Object {$UPN = $_.UserPrincipalName
$u=Get-ADUser -Filter "UserPrincipalName -eq '$UPN'" | Set-ADUser -UserPrincipalName $_.NewUPN -WhatIf
}
