function Switch-To-Customer {
    cd C:\Customer
}

function Switch-To-Project {
    cd C:\Projects    
}

function Switch-To-Boris-Project {
    cd C:\Projects\BorisWilhelms
}

function Switch-To-Scripts {
    cd 'C:\Projects\BorisWilhelms\C# Scripts\'
}

Set-Alias cust Switch-To-Customer
Set-Alias proj Switch-To-Project
Set-Alias bw Switch-To-Boris-Project
Set-Alias scripts Switch-To-Scripts