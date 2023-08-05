Import-Module .\sortfiles.ps1

function CreateLoadFolders {
    # if ($params.Contains('-f')) {
    if (!(Test-Path -Path ($rootPath + '/' + $weekFolderName))) {
        <# Action to perform if the condition is true #>
        New-Item -Path ($rootPath + '/' + $weekFolderName) -ItemType Directory
        OutputPS ('Folder ' + $weekFolderName + ' Created in ' + '"' + $rootPath + '"')
    }
    else {
        OutputPS ('Folder ' + $weekFolderName + ' Already in ' + '"' + $rootPath + '"')
    }

    #inside $weekfolder
    #Create subfolders for each customer Only creates if not exist
    foreach ($customer in $customers) {
        if (!(Test-Path -Path ($rootPath + '/' + $weekFolderName + '/' + $customer))) {
            New-Item -Path ($rootPath + '/' + $weekFolderName + '/' + $customer) -ItemType Directory
            OutputPS ("folder does not esist Creating folder" + $customer.filename)
        }
        else {
            OutputPS "folder exists"
        }
    }

    OutputPS ('Done 1/' + $stepCount)
}


function MoveFiles {
    OutputPS ('Moving files into corresponding folder in ' + '"' + $rootPath + '/' + $weekFolderName + '"')

    Get-ChildItem -Path ($rootPath + '\') -File | ForEach-Object {
        ForEach-Object -Process {
            Write-Output $_
            foreach ($customer in $customers) {
                
            }
        } 
    }
}

function GenerateTestFiles {
    param (
        $amount
    )
    for ($i = 0; $i -lt $amount; $i++) {
        New-Item -Path $rootPath -Name ("p h" + $i + ".pdf") -ItemType "file"
        New-Item -Path $rootPath -Name ("npi" + $i + ".jpeg") -ItemType "file"
    }
}