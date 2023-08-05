$a = Import-CSV -Path .\script\report\WORDSTARREPORT.TXT -Delimiter "," | Where-Object 
{ $_.Status -eq "Movement Ended" } | Group-Object -Property GroupID -ashashtable
