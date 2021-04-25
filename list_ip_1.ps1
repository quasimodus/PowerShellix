$ipkmw = Get-Content C:\Bat\list_ip.txt
$logs= "C:\Bat\ping-log.txt"
foreach ($ip in $ipkmw)
{
	
	$connect = test-connection -computername $ip -Count 2 -Quiet
	if ($connect -eq $false)
		{		
			"Ping отсутствует: " + $ip | out-file $logs -append
		}
		
	ping $ip -n 1
}
