#coclauncher - powershell script to launch clash of clans bot

[xml]$botdata = get-content ./botdata.xml

Write-Host "====== Bots ====="
foreach ($bot in $botdata.bots.bot) { Write-Host $bot.key $bot.profile }
[int]$choice = read-host "Enter the number for the bot you wish to launch"

$mybotPath = $botdata.bots.mybotPath
$botToLaunch = $botdata.bots.bot[$choice-1].profile
$memuInstance = $botdata.bots.bot[$choice-1].memuInstance
$command = $mybotPath + "mybot.run.exe " + $botToLaunch + " MEmu " + $memuInstance
invoke-expression $command

