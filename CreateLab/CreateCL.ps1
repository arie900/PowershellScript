$VMName = "Test_Machine" #Insert VMName
$SwitchName = "ArelionSwitch"
$Path = "C:\VM\$VMName"
$localCred = Get-Credential -UserName Admin -Message "Local Machine Credential"
#$domainCred = Get-Credential -UserName Arelion\administrator -Message "Domain Credential"
$bootOrder

New-VM -Name $VMName -MemoryStartupBytes 2GB -NoVHD -SwitchName $SwitchName -Path $Path `
-Generation 2
Copy-Item -Path C:\VMS\BASE\Windows10\Windows10Base.vhdx -Destination $Path\$VMName.vhdx
Add-VMHardDiskDrive -VMName $VMName -Path $Path\$VMName.vhdx -ControllerType SCSI -ControllerNumber 0 -ControllerLocation 1
$HD = Get-VMHardDiskDrive -VMName $VMName -ControllerLocation 1 -ControllerNumber 0 -ControllerType SCSI
Set-VMFirmware -VMName $VMName -FirstBootDevice $hd

Start-VM -VMName $VMName
#Start-Sleep -Seconds 120
#Invoke-Command -VMName $VMName -Credential $localCred -ArgumentList $VMName , $domainCred{
#param($VMName , $domainCred)
#Add-Computer -DomainName Arelion.local -NewName $VMName -Credential $domainCred -Restart
#get-NetAdapter -Name "Ethernet" | New-NetIPAddress -IPAddress 172.16.0.10 -PrefixLength 24 -DefaultGateway 172.16.0.1
#Get-NetAdapter -Name "Ethernet" | Set-DnsClientServerAddress -ServerAddresses 172.16.0.10
#}