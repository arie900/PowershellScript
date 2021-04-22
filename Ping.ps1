$destination = '8.8.8.8'
do{
    $ping = Test-NetConnection $destination | select PingSucceeded
    if ($ping.PingSucceeded -eq "True"){
        Write-Host "Connection is good"
        Get-Date | Select DateTime | Export-Csv -Path $HOME\Desktop\SuccessPing.csv -Append

    }
        
     else{
        $date = Get-Date
        Get-Date | Select DateTime | Export-Csv -Path $HOME\Desktop\FailPing.csv -Append
        Write-Host "No Connection + $date"
     }
     sleep -Seconds 5

}
while ($true)



