$SccmServers = Get-CMCollectionMember -CollectionName 'Tehila server' | select Name,UserName | sort Name
$ServerReport = $null

foreach ($server in $SccmServers){
$ServerName = $server.Name
$ServerUser = $server.UserName
$dataRow = "
</tr>
<td>$ServerName</td>
</tr>
"
$ServerReport +=$dataRow

}
$report = "<html>
<style>
{font-family: Arial; font-size: 13pt;}
TABLE{border: 1px solid black; border-collapse: collapse; font-size:10pt;}
TH{border: 1px solid black; background: #dddddd; padding: 5px; color: #000000;}
TD{border: 1px solid black; padding: 5px; }
</style>
<h2>Tehila Servers</h2>
<table>
<tr>
<th>Name</th>
</tr>
$ServerReport
</table>
<tr>
"

Send-MailMessage -From arief@digital.gov.il -to chaia@digital.gov.il -BodyAsHtml $report -SmtpServer 10.110.110.7 -Subject "Tehila Servers - Report"