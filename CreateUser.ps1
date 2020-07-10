$Name=Read-Host "Write user name"


New-ADUser -Name $Name -GivenName $Name `
-UserPrincipalName $Name@DNA.com -Enabled $true `
-DisplayName "$Name $LastName" -Path "CN=Users,DC=DNA,DC=com" `
-AccountPassword (ConvertTo-SecureString "!q2w3e4r" -AsPlainText -Force) `
-PasswordNeverExpires $true 

