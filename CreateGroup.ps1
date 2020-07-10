$GroupName = "Management"               #Read-Host "Write group name"
#$GroupDesciption = Read-Host "Write description of the group"


New-ADGroup -Name $GroupName -SamAccountName $GroupName `
-GroupCategory Security -GroupScope Global `
 -Path "CN=Users,DC=DNA,DC=com" #-Description $GroupDesciption