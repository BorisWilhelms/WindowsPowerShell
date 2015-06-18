function Start-IISExpress() {
    param(
        [string]$path = (Resolve-Path .\).Path
    )

    $executable = "$env:ProgramFiles\IIS Express\iisexpress.exe"

    if(!(Test-Path $executable)){
        Write-Error "IIS Express not found!"
        return
    }

    $port = Get-Random -Minimum 49152 -Maximum 65535
    start "http://localhost:$port"
    & "$executable" /port:$port /path:$path
}