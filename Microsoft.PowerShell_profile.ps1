Import-Module PsGet

$psdir="${env:USERPROFILE}\Documents\WindowsPowerShell"  
Get-ChildItem "${psdir}\*.ps1" -Exclude $MyInvocation.MyCommand.Name | %{.$_} 

# Load posh-git example profile
. '.\Modules\posh-git\profile.example.ps1'