
#Run the below script to export the list of all VMs with selected properties from all the subscriptions.
Connect-AzAccount -Tenant "Tenant ID Here"
$subscriptionslist = Get-AzSubscription

foreach ($subscription in $subscriptionslist) {
Set-AzContext $subscription
Write-Host "Working on the Subscription" $subscription.Name
$output += Get-AzVM | select Name, Location, ResourceGroupName
$outputjson = $output | ConvertTo-Json > jsonoutput.json
}

#Run the below command to query the meta data of a single instance and provide a json formatted output.
Get-AzVM "VM Name" -ResourceGroupName "VM Resource Group Name Here" | ConvertTo-Json > jsonoutput.json

