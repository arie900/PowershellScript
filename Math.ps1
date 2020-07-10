[math]::Pow(4,4)
Get-PSDrive -name c | Select-Object free, @{N='Free'; E =[math]::Round( / lgb), 4)

Test-Connection -count 1 -ComputerName pc01 -Quiet

Enter-PSSession -ComputerName nyc-svr4