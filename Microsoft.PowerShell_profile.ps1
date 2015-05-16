$psdir="${env:USERPROFILE}\Documents\WindowsPowerShell"  
Get-ChildItem "${psdir}\*.ps1" -Exclude $MyInvocation.MyCommand.Name | %{.$_} 
