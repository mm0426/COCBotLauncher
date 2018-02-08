#coclauncher - powershell script to launch clash of clans bot

$mybotPath = "C:\MyBot-MBR_v7.4.3\"
$botToLaunch = "wedey"
$memuInstance = "MEmu"
$command = $mybotPath + "mybot.run.exe " + $botToLaunch + " MEmu " + $memuInstance
invoke-expression $command