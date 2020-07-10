#Get ADUser by name and add to required group
$users = get-aduser -Filter 'Name -like "help*"'
Get-ADGroup "HelpDesk" | Add-ADGroupMember -Members $users
