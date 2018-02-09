#coclauncher - powershell script to launch clash of clans bot

param (
	[string]$botToLaunch
)

[xml]$botdata = get-content ./botdata.xml
$mybotPath = $botdata.bots.mybotPath

#first, loop through to see if the input parameter specifies a valid bot

foreach ($bot in $botdata.bots.bot) {
	if ($botToLaunch -eq $bot.profile) {
		write-host $bot
		$memuInstance = $bot.memuInstance
	}
}

#using memuInstance as a flag to signify that if it's set; we can skip the menu selection to prompt the
#user to choose a bot to launch

if (!$memuInstance) {
	while ($botdata.bots.bot.key -notcontains $choice) 
	{
		Write-Host "====== Bots ====="
		foreach ($bot in $botdata.bots.bot) { Write-Host $bot.key $bot.profile }
		[int]$choice = read-host "Enter the number for the bot you wish to launch"
		if ($botdata.bots.bot.key -notcontains $choice) {
			write-host "error - choice entered does not match any menu option."
		}
	}
	$botToLaunch = $botdata.bots.bot[$choice-1].profile
	$memuInstance = $botdata.bots.bot[$choice-1].memuInstance

}
$command = $mybotPath + "mybot.run.exe " + $botToLaunch + " MEmu " + $memuInstance
invoke-expression $command

