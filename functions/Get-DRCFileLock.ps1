function Get-DRCFileLock
{
    Param(
        $fileName,
        $tries = 10,
        $tryInterval = 3
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