function choose()
{
    param (
        [Parameter(ValueFromPipeline=$true)]
        $InputObject
    )
    BEGIN 
    {
        $items = @();
    }
    PROCESS 
    {
        $items += $InputObject
    }
    END
    {
        if(!$items)
        {
            return
        }
   
        if($items.Count -eq 1)
        {
            return $items[0]
        }

        Write-Host "`nPlease select an item:`n" -ForegroundColor Green

        for($i = 0; $i -lt $items.Length; $i++) 
        {
            $text =  $items[$i]
            Write-Host ("`t{0}. {1}" -f ($i + 1), $text)
        }

        $selection = Read-Host
        return $items[($selection-1)]
    } 
}