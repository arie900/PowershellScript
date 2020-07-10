function Delete-OldFiles{
    param ([String]$Path , [int]$DaysOld)
    $CreationTime = Get-ChildItem -Path C:\Test -Recurse | Select-Object LastWriteTime 
    $CreationTime
    $CreationTime | ForEach-Object {
        if($_.LastWriteTime -lt ((get-date).AddDays(2))) {
        Remove-Item 
        $_.FullName
        echo "hi"
        }
        else{ echo "bye"}
}}

Delete-OldFiles -Path C:\Test -DaysOld 2
(get-date).AddDays(2)

#Get-ChildItem -Path C:\Test -Recurse | Select-Object LastWriteTime

#Exercise : Create 3 report and delete them
#