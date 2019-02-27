function prompt {
    # Your non-prompt logic here
    $host.ui.RawUI.WindowTitle = (Get-Item -Path ".\").Name
    # Delegate prompt to oh-my-posh
    Write-WithPrompt
}