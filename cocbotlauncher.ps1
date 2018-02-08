#coclauncher - powershell script to launch clash of clans bot

$mybotPath = "C:\MyBot-MBR_v7.4.3\"

[xml]$botdata = get-content ./botdata.xml

Write-Host "====== Bots ====="
foreach ($bot in $botdata.bots.bot) { Write-Host $bot.key $bot.profile }

#$botToLaunch = "wedey"
#$memuInstance = "MEmu"
#$command = $mybotPath + "mybot.run.exe " + $botToLaunch + " MEmu " + $memuInstance
#invoke-expression $command
