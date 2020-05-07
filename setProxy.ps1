$proxyhost="192.168.72.1"
$proxyport="3128"

netsh winhttp set proxy "${proxyhost}:${proxyport}"

netsh winhttp show proxy