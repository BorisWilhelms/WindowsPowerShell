Function Touch-File
{
    param (
        [string] $file
    )
    
    if($file -eq $null) 
    {
        throw "No filename supplied"
    }

    if(Test-Path $file)
    {
        (Get-ChildItem $file).LastWriteTime = Get-Date
    }
    else
    {
        echo $null > $file
    }
}

if(!(Test-Path Alias:\touch))
{
    Set-Alias touch Touch-File
}
