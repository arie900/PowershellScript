$Employee = "help"   #Insert Name of user

$Create in loop users
for ($i = 1 ; $i -lt 18 ; $i=$i+1){
echo "$i"
New-ADUser -Name "$Employee$i" -GivenName "$Employee$i" `
-UserPrincipalName "$Employee$i@DNA.com" -Enabled $true `
-DisplayName "$Employee@i" -Path "CN=Users,DC=DNA,DC=com" `
-AccountPassword (ConvertTo-SecureString "!q2w3e4r" -AsPlainText -Force) `
-PasswordNeverExpires $true

$Check = Get-ADUser "$Employee$i" 
if($Check -ne $null){echo "Success"}
else {"FAILED"}
}

