#################
#Create Varibles#
#################
$VMName = "Arie-DC01"
$SwitchName = "ArelionSwitch"
$Path = "C:\VM\$VMName"
$localCred = Get-Credential -UserName administrator -Message "Local Machine Credential"
#$domainCred = Get-Credential -UserName Arelion\administrator -Message "Domain Credential"


##############################
#Create new VM from base VHDX#
##############################
New-VM -Name $VMName -MemoryStartupBytes 2GB -NoVHD -SwitchName $SwitchName -Path $Path `
-Generation 2 
Copy-Item -Path C:\VMS\BASE\WindowsServer2016\WS2016Base.vhdx -Destination $Path\$VMName.vhdx
Add-VMHardDiskDrive -VMName $VMName -Path $Path\$VMName.vhdx -ControllerType SCSI -ControllerNumber 0 -ControllerLocation 1
$HD = Get-VMHardDiskDrive -VMName $VMName -ControllerLocation 1 -ControllerNumber 0 -ControllerType SCSI
Set-VMFirmware -VMName $VMName -FirstBootDevice $hd


###################################################
#Start VM and rename hostname of VM and restarting#
###################################################
Start-VM -VMName $VMName
Start-Sleep -Seconds 90
Invoke-Command -VMName $VMName -Credential $localCred  -ArgumentList $VMName -ScriptBlock{
param ($VMName)
Rename-Computer -NewName $VMName
Restart-Computer -Force
}

###########################
#Configure static ip to VM#
###########################
Start-Sleep -Seconds 5
Invoke-Command -VMName $VMName -Credential $localCred{
get-NetAdapter -Name "Ethernet" | New-NetIPAddress -IPAddress 172.16.0.10 -PrefixLength 24 -DefaultGateway 172.16.0.1
Get-NetAdapter -Name "Ethernet" | Set-DnsClientServerAddress -ServerAddresses 172.16.0.10
}
Start-Sleep -Seconds 5


###########################
#Install Domain Controller#
#       Install DHCP      #
###########################
Invoke-Command -VMName $VMName -Credential $localCred{
Install-WindowsFeature AD-Domain-Services,DHCP -IncludeAllSubFeature -IncludeManagementTool
Import-Module ADDSDeployment
Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "WinThreshold" `
-DomainName "Arelion.local" `
-DomainNetbiosName "ARELION" `
-ForestMode "WinThreshold" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true
}