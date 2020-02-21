Import-Module posh-git
Import-Module oh-my-posh
Set-Theme paradox
$DefaultUser = 'wired'

$psdir = Split-Path -Path $profile  
$env:Path += ";${psdir}\Scripts"
Get-ChildItem "${psdir}\cmdlets\*.ps1" -Exclude $MyInvocation.MyCommand.Name | % {.$_} 
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
