$psdir="${env:USERPROFILE}\Documents\WindowsPowerShell"  
Get-ChildItem "${psdir}\*.ps1" -Exclude $MyInvocation.MyCommand.Name | %{.$_} 

# Load posh-git example profile

if (Test-Path "${env:USERPROFILE}\Github\posh-git\profile.example.ps1")
{
    . "${env:USERPROFILE}\Github\posh-git\profile.example.ps1"
}

