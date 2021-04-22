$unistall = Get-ChildItem -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\ | Get-ItemProperty | where displayname -like 'edr agent' | select UninstallString

copy-item -Path '\\tehila-fs\installs\EDRUnistall\agent_config.dat' -Destination 'C:\Program Files\APD\Agent\data' -Force -WarningAction SilentlyContinue

copy-item -Path '\\tehila-fs\Installs\EDRUnistall\AgentDeactivator64.exe' -Destination 'C:\Program Files\APD\Agent' -Force

Start-Sleep -Seconds 5

try{
    if($unistall -ne $null){
        Start-Process -FilePath $unistall.UninstallString -ArgumentList '/S /NORESTART' -Wait -WarningAction SilentlyContinue
        $unistall = Get-ChildItem -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\ | Get-ItemProperty | where displayname -like 'edr agent'
        if($unistall -eq $null){
            Write-Output "Agent succssesfuly removed"
        }
    else {
        Start-Process -FilePath 'C:\Program Files\APD\Agent\AgentDeactivator64.exe' -ArgumentList '-m 2' -Verbose
        Start-Process -FilePath $unistall.UninstallString -ArgumentList '/S /NORESTART' -Wait -WarningAction SilentlyContinue
        Write-Output "Agent succssesfuly removed with AgentDeactivator"
        }
        
        
        }
    else {Write-Output "Computer dont have Agent" }
    }
    catch{Write-Output "Failed"}