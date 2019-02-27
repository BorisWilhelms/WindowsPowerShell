Import-Module posh-git
Import-Module oh-my-posh
Import-Module Jump.Location
Set-Theme paradox
$DefaultUser = 'wired'

$psdir = Split-Path -Path $profile  
Get-ChildItem "${psdir}\cmdlets\*.ps1" -Exclude $MyInvocation.MyCommand.Name | % {.$_} 