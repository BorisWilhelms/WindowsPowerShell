function Start-LocalJob([scriptblock]$scriptBlock) {
    Start-Job -Init ([ScriptBlock]::Create("Set-Location $pwd")) -Script $scriptBlock
}