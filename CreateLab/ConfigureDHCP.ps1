#################
#Create Varibles#
#################
$VMName = "Arie-DC01"
$SwitchName = "ArelionSwitch"
$Path = "C:\VM\$VMName"
#$localCred = Get-Credential -UserName administrator -Message "Local Machine Credential"
$domainCred = Get-Credential -UserName Arelion\administrator -Message "Domain Credential"

##############################
#Configure Domain Controllerr#
##############################
Invoke-Command -VMName $VMName -Credential $domainCred{
Add-DhcpServerv4Scope -StartRange 172.16.0.1 -EndRange 172.16.0.254 -SubnetMask 255.255.255.0 -Name 172.16.0.0 -LeaseDuration 8:00:00
Add-Dhcpserverv4ExclusionRange -ScopeId 172.16.0.0 -StartRange 172.16.0.1 -EndRange 172.16.0.10
Set-DhcpServerv4OptionValue -DnsServer 172.16.0.10 -DnsDomain Arelion.local -Route 172.16.0.1
}