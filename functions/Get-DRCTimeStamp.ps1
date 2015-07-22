function Get-DRCTimeStamp
{
    return $unixtime=[int][double]::Parse($(Get-Date -date (Get-Date).ToUniversalTime()-uformat %s))
}