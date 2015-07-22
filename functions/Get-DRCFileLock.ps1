function Get-DRCFileLock
{
    Param(
        [Parameter(
            Position=0,
            Mandatory=$true
        )]$fileName,
        [Parameter(
            Position=1
        )]$tries = 10,
        [Parameter(
            Position=1
        )]$tryInterval = 1
    )
    for ($i = 1; $i -le $tries; $i++)
    {
        try
        {
            $file = [System.IO.File]::Open($fileName,'OpenOrCreate','ReadWrite','Read')
            return $file
        }
        catch
        {
            Write-Verbose "waiting for lock"
            Start-Sleep -Seconds $tryInterval
        }
    }
    return $null
}