$proxyhost="192.168.72.1"
$proxyport="3128"

netsh winhttp set proxy "${proxyhost}:${proxyport}"

netsh winhttp show proxy

Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
Set-Service sshd -StartupType Automatic
Set-Service ssh-agent -StartupType Automatic
Start-Service sshd
Start-Service ssh-agent