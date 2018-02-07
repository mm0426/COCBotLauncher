#coclauncher - powershell script to launch clash of clans bot

$mybotPath = "C:\MyBot-MBR_v7.3.5"
$botToLaunch = "wedey"
$command = $mybotPath + $botToLaunch
invoke-command -ComputerName localhost -scriptblock $command
