#enter month to invoice followed by all the customers had in month

$path = "H:\My Drive\CentralAcessfile\ScaleTickets2022"

#clears test env
Remove-Item -Path $path + "\hi"

$docPath = $path + "\" + $args[0]
Get
#creates new folder based on arg[0]
New-Item -Path $docPath -ItemType Directory
cd $docPath
Write-Host $docPath
