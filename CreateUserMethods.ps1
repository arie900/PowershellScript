$CheckID
$CheckUserName
$Name = "Test"


function Get-ADUserIDExist {param ( [int]$ID )
$CheckID = Get-ADUser -Filter "UserPrincipalName -eq '$ID@DNA.com'" 
if($CheckID -ne $null){echo "There already user with the same ID call to helpdesk 02-6866163"
break}
else{
}
}


function Get-ADUserUserNameExist { param ([string]$UserName)
$CheckUserName = Get-ADUser -Filter "SamAccountName -eq '$UserName'"
while($CheckUserName -ne $null){echo "There already user with the same user name' insert new user name"
$UserName = Read-Host "New username"
$CheckUserName = Get-ADUser -Filter "SamAccountName -eq '$UserName'"}
}


function New-LocalDomainUser {param ([String]$UserName ,[int]$ID)

Get-ADUserIDExist -ID $ID
Get-ADUserUserNameExist -UserName $UserName
}




