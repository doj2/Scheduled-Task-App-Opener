$action = New-ScheduledTaskAction -Execute 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe'
$trigger = New-ScheduledTaskTrigger -Once -At 3:40pm
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "DemoTask" -Description "Google Chrome opening automatically"

<#removing the scheduled task
Get-ScheduledTask -TaskName "DemoTask"
Unregister-ScheduledTask -TaskName "Demotask" -Confirm:$false
#>