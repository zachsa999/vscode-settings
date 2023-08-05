function OutputPS {
    param (
        $output
    )
    if ($params.Contains('-v')) {
        Write-Output ($output)
    }
}



