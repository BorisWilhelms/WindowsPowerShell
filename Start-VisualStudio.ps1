function Start-VisualStudio() 
{ 
    $solutions = Get-ChildItem *.sln

    if(!$solutions) 
    {
        Write-Host "No solution found!"
        return
    }

    $file = choose $solutions
    & "C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe" $file.FullName
}

if(!(Test-Path Alias:\vs))
{
    Set-Alias vs Start-VisualStudio
}