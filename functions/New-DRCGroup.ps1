function New-DRCGroup
{
    param(
         [Parameter(
            Position=0, 
            Mandatory=$true, 
            ValueFromPipeline=$true,
            ValueFromPipelineByPropertyName=$true)
        ]
        $groupName,
        [Parameter(
            Position=1
        )]
        $slots = 1
    )
    $payload = @{'groupName'=$groupName; 'slots'=$slots; 'hosts'=@{}}
    $payload | ConvertTo-Json | Out-File -FilePath "$groupName.json" -Encoding ascii -NoClobber
}