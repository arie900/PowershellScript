#Insert computer name and create ADComputer to required path
$ComputerName = Read-Host "Enter computer name"
New-ADComputer -Name $ComputerName -UserPrincipalName $ComputerName -Path "CN=Computers,DC=DNA,DC=com"
