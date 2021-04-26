$Servers = Get-Content C:\PS\ComputersList.txt
foreach ($Server in $Servers){
Get-CimInstance -ClassName win32_operatingsystem -ComputerName $Server | select csname, lastbootuptime
}
