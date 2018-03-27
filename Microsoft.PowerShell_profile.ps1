
$psdir = Split-Path -Path $profile  
# . (Join-Path -Path ($psdir) -ChildPath $(switch ($HOST.UI.RawUI.BackgroundColor.ToString()) {'White' {'cmdlets\Set-SolarizedLightColorDefaults.ps1'}'Black' {'cmdlets\Set-SolarizedDarkColorDefaults.ps1'}default {return}}))
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme agnoster
Get-ChildItem "${psdir}\cmdlets\*.ps1" -Exclude $MyInvocation.MyCommand.Name | % {.$_} 
$DefaultUser = 'boris'