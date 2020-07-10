#מכניסינים מיקום קובץ CSV
#קובץ עם שדות של תעודת זהות ושם פרטי
#פקודה שמכניסה למערך כל אובייקט

$UsersArray = Import-Csv -Path .\test.csv
#רץ על כל אובייקט במערך


$UsersArray | ForEach-Object{$IDn=$_.ID  # מכניס על פרמטר שהגדרתי את השדה של תעודה זהות של האובייקט הנוכחי

#מביא יוזר מהאקטיב לפי תעודת זהות באובייקט הנוכחי ומעביר לפקודה הבאה
#מגדיר בתוך השדה באקטיב של מערך ותפקיד 
Get-ADUser -Filter "UserPrincipalName -like '$IDn*'" | Set-ADUser -Department "מערך" -Title "תפקיד" -WhatIf
#Get-ADUser -Filter "UserPrincipalName -like '$IDn*'"
}
