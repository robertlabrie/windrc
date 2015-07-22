
Get-ChildItem $PSScriptRoot\functions\*.ps1 | % { . $_ }
Get-DRCTimeStamp
New-DRCGroup "\\silo\e\netfile.json"
<#
if (! ($f = Get-DRCFileLock -fileName c:\temp\moo.txt))
{
    Write-Output "Failed to get lock, so that's that"
}
else
{
    Pause
    $f.close();
}
#>