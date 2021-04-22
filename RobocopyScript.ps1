$Source = #Write source folder to copy
$Destination = #Write destination path


$dir | foreach {
        $folder = $_.FullName
        $folderName = $_.BaseName
        $path = '\\tehila-fs\ישראל דיגיטלית\משימות חיצוניות\' + $foldername
        $path 
        $Answer = Read-Host = "Source" + $folder + "Destination" + $Path + "Continue?"
        if ($Answer -eq "Yes"){
            robocopy $folder $path /e /log:"C:\Transfer\$folderName.txt"
        }
    }


robocopy '$Source' '$Destination'  /e /log:"C:\Transfer\בריאות.txt"