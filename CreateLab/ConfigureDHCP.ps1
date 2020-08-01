#################
#Create Varibles#
#################
$VMName = "CoVid-DC01"
$SwitchName = "ArelionSwitch"
$Path = "C:\VM\$VMName"
#$localCred = Get-Credential -UserName administrator -Message "Local Machine Credential"
$domainCred = Get-Credential -UserName Covid\administrator -Message "Domain Credential"

##############################
#Configure Domain Controllerr#
##############################
Invoke-Command -VMName $VMName -Credential $domainCred{
Add-DhcpServerv4Scope -StartRange 192.168.1.1 -EndRange 192.168.1.254 -SubnetMask 255.255.255.0 -Name 192.168.1.0 -LeaseDuration 8:00:00
Add-Dhcpserverv4ExclusionRange -ScopeId 192.168.1.0 -StartRange 192.168.1.1 -EndRange 192.168.1.20
Set-DhcpServerv4OptionValue -DnsServer 192.168.1.10 -DnsDomain Arelion.local -Route 192.168.1.1
}