function Set-LocationEx() {
    param(
        [string]$folder
    )

    if($folder -and (Test-Path $folder))
    {
        Set-Location $folder
        return
    }

    $currentFolder = (Get-Item ".\")
    $folders = $currentFolder.GetDirectories(("*{0}*" -f $folder))

    if($folders.Length -eq 0) 
    {
        Write-Host "No folder found" -ForegroundColor Red
        return
    }
        
    
    $folders | choose | Set-Location
}

Set-Alias sw Set-LocationEx