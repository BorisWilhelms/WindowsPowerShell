function Switch-To-Customer {
    cd C:\Customer
}

function Switch-To-Project {
    cd C:\Projects    
}

function Switch-To-Boris-Project {
    cd C:\Projects\BorisWilhelms
}

function Switch-To-Home {
    cd ~
}

function Switch-To-Scripts {
    cd 'C:\Projects\BorisWilhelms\C# Scripts\'
}
function Go-Upper {
    cd..
    cd..

}

Set-Alias cust Switch-To-Customer
Set-Alias proj Switch-To-Project
Set-Alias bw Switch-To-Boris-Project
Set-Alias scripts Switch-To-Scripts
Set-Alias ".." "cd.."
Set-Alias "..." GoUpper
Set-Alias "~" Switch-to-Home