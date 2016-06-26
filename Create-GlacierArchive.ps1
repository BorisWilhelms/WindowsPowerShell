function Create-GlacierArchive($folder)
{
    $archive = Split-Path -leaf $folder
    
    Get-FileList $folder | Export-Csv "$($archive)-Content.csv"
    Compress-Archive -Path $folder -DestinationPath "$($archive).zip"
}