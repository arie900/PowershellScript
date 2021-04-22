$LocalVersion = Get-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | where DisplayName -eq 'Google Chrome' | select DisplayVersion
$LocalVersion = [System.Version]::Parse($LocalVersion.DisplayVersion)
$compare = '88.0.4324.141'
$Compare = [System.Version]::Parse($compare)
if($LocalVersion -ge $compare ){
    Write-Host 'Installed'
}
else {}
