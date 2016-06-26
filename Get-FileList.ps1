function Get-FileList
{
    ls -Recurse | ForEach-Object {
        $file = $_
        $hash = Get-FileHash -Algorithm MD5 $file.FullName

        New-Object -TypeName PSObject -Property @{
            FileName = Resolve-Path -Relative $file.FullName
            FileSize = $file.Length
            LastWriteTime = $file.LastWriteTime
            Hash = $hash.Hash
        }
    }
}