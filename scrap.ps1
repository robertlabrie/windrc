Get-ChildItem $PSScriptRoot\functions\*.ps1 | % { . $_ }
if (! ($f = Get-DRCFileLock -fileName c:\temp\moo.txt))
{
    Write-Output "Failed to get lock, so that's that"
}
else
{
    Pause
    $f.close();
}