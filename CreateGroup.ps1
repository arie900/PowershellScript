$GroupName = Read-Host "Write ADGroupName"
$GroupDesciption = Read-Host "Write description of the group"

#Create new ADGroup in required path
New-ADGroup -Name $GroupName -SamAccountName $GroupName `
-GroupCategory Security -GroupScope Global -Path "CN=Users,DC=DNA,DC=com" #-Description $GroupDesciption
